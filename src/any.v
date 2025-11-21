module val

import time

pub type Any = Nil
	| voidptr
	| bool
	| u8
	| u16
	| u32
	| u64
	| i8
	| i16
	| int
	| i64
	| f32
	| f64
	| rune
	| string
	| time.Time
	| []Any
	| map[u8]Any
	| map[voidptr]Any
	| map[u16]Any
	| map[u32]Any
	| map[u64]Any
	| map[i8]Any
	| map[i16]Any
	| map[int]Any
	| map[i64]Any
	| map[f32]Any
	| map[f64]Any
	| map[rune]Any
	| map[string]Any

pub fn (a Any) string() string {
	match a {
		string { return (a as string).clone() }
		// time.Time { return int(0) } // TODO
		else { return a.str().clone() }
	}
}

pub fn (a Any) int() int {
	match a {
		int { return a }
		i64, f32, f64, bool { return int(a) }
		// time.Time { return int(0) } // TODO
		else { return 0 }
	}
}

// i64 returns `Any` as a 64-bit integer.
pub fn (a Any) i64() i64 {
	match a {
		i64 { return a }
		int, f32, f64, bool { return i64(a) }
		// time.Time { return i64(0) } // TODO
		else { return 0 }
	}
}

// u64 returns `Any` as a 64-bit unsigned integer.
pub fn (a Any) u64() u64 {
	match a {
		u64 { return a }
		int, i64, f32, f64, bool { return u64(a) }
		// time.Time { return u64(0) } // TODO
		else { return 0 }
	}
}

// f32 returns `Any` as a 32-bit float.
pub fn (a Any) f32() f32 {
	match a {
		f32 { return a }
		int, i64, f64 { return f32(a) }
		// time.Time { return f32(0) } // TODO
		else { return 0.0 }
	}
}

// f64 returns `Any` as a 64-bit float.
pub fn (a Any) f64() f64 {
	match a {
		f64 { return a }
		int, i64, f32 { return f64(a) }
		// time.Time { return f64(0) } // TODO
		else { return 0.0 }
	}
}

// array returns `Any` as an array.
pub fn (a Any) array() []Any {
	if a is []Any {
		return a
	} else if a is map[string]Any {
		mut arr := []Any{}
		for _, v in a {
			arr << v
		}
		return arr
	}
	return [a]
}

// as_map returns `Any` as a map (TOML table).
pub fn (a Any) as_map() map[string]Any {
	if a is map[string]Any {
		return a
	} else if a is []Any {
		mut mp := map[string]Any{}
		for i, fi in a {
			mp['${i}'] = fi
		}
		return mp
	}
	return {
		'0': a
	}
}

// bool returns `Any` as a boolean.
pub fn (a Any) bool() bool {
	match a {
		bool { return a }
		string { return a.bool() }
		else { return false }
	}
}

// as_strings returns the contents of the map
// as `map[string]string`
pub fn (m map[string]Any) as_strings() map[string]string {
	mut result := map[string]string{}
	for k, v in m {
		result[k] = v.string()
	}
	return result
}

// as_strings returns the contents of the array
// as `[]string`
pub fn (a []Any) as_strings() []string {
	mut sa := []string{}
	for any in a {
		sa << any.string()
	}
	return sa
}
