module val

pub type Float = f32 | f64

pub fn (f Float) f32() f32 {
	return if f is f32 {
		f
	} else {
		f as f32
	}
}

pub fn (f Float) f64() f64 {
	return match f {
		f32 {
			f64(f)
		}
		f64 {
			f
		}
	}
}

pub fn (f Float) uint() Uint {
	return match f {
		f32 {
			Uint(u32(f))
		}
		f64 {
			Uint(u64(f))
		}
	}
}
