module val

pub type Uint = u8 | u16 | u32 | u64

pub fn (u Uint) u8() u8 {
	return if u is u8 {
		u
	} else {
		u as u8
	}
}

pub fn (u Uint) u16() u16 {
	return match u {
		u8 {
			u16(u)
		}
		u16 {
			u
		}
		else {
			u as u16
		}
	}
}

pub fn (u Uint) u32() u32 {
	return match u {
		u8, u16 {
			u32(u)
		}
		u32 {
			u
		}
		else {
			u as u32
		}
	}
}

pub fn (u Uint) u64() u64 {
	return match u {
		u8, u16, u32 {
			u64(u)
		}
		u64 {
			u
		}
	}
}

pub fn (u Uint) int() Int {
	return match u {
		u8, u16, u32, u64 {
			Int(u)
		}
	}
}

pub fn (u Uint) f32() f32 {
	return match u {
		u8, u16, u32, u64 {
			f32(u)
		}
	}
}

pub fn (u Uint) f64() f64 {
	return match u {
		u8, u16, u32, u64 {
			f64(u)
		}
	}
}

pub fn (u Uint) float() Float {
	return match u {
		u8, u16, u32 {
			Float(f32(u))
		}
		u64 {
			Float(f64(u))
		}
	}
}

pub fn (u Uint) scalar() Scalar {
	return match u {
		u8, u16, u32, u64 {
			Scalar(u)
		}
	}
}
