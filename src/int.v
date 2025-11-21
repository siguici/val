module val

pub type Int = u8 | u16 | u32 | u64 | i8 | i16 | int | i64

pub fn (i Int) uint() Uint {
	return match i {
		u8, u16, u32, u64 {
			Uint(i)
		}
		i8 {
			Uint(u8(i))
		}
		i16 {
			Uint(u16(i))
		}
		int {
			Uint(u32(i))
		}
		i64 {
			Uint(u64(i))
		}
	}
}

pub fn (i Int) u8() u8 {
	return i.uint().u8()
}

pub fn (i Int) u16() u16 {
	return i.uint().u16()
}

pub fn (i Int) u32() u32 {
	return i.uint().u32()
}

pub fn (i Int) u64() u64 {
	return i.uint().u64()
}

pub fn (i Int) i8() i8 {
	return if i is i8 {
		i
	} else {
		i as i8
	}
}

pub fn (i Int) i16() i16 {
	return match i {
		i8 {
			i16(i)
		}
		i16 {
			i
		}
		else {
			i as i16
		}
	}
}

pub fn (i Int) int() int {
	return match i {
		i8, i16 {
			int(i)
		}
		int {
			i
		}
		else {
			i as int
		}
	}
}

pub fn (i Int) i64() i64 {
	return match i {
		i8, i16, int {
			i64(i)
		}
		i64 {
			i
		}
		else {
			i as i64
		}
	}
}
