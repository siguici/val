module val

pub type Int = u8
	| u16
	| u32
	| u64
	| i8
	| i16
	| int // alias i32
	| i64

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
