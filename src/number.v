module val

pub type Number = u8 | u16 | u32 | u64 | i8 | i16 | int | i64 | f32 | f64

pub fn (n Number) uint() Uint {
	return match n {
		u8, u16, u32, u64 {
			Uint(n)
		}
		i8, i16, int, i64 {
			Int(n).uint()
		}
		f32, f64 {
			Float(n).uint()
		}
	}
}
