module val

import time

pub type Any = Nil
	| voidptr
	| bool
	| byte
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
	| map[byte]Any
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
