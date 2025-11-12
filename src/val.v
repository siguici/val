module val

import time

// NOTE: Large portions of this file were inspired by (and partially
// adapted from) V's standard library sources:
//
// - https://github.com/vlang/v/tree/master/vlib/toml  (for `Any`)
// - https://github.com/vlang/v/tree/master/vlib/orm   (for `Primitive`)
//
// This project reimplements these concepts in a unified and extensible way,
// without any runtime dependency on those modules.

pub struct Nil {}

pub type Uint = byte // alias u8
	| u16
	| u32
	| u64

pub type Int = byte
	| u16
	| u32
	| u64
	| i8
	| i16
	| int // alias i32
	| i64

pub type Float = f32 | f64

pub type Num = byte | u16 | u32 | u64 | i8 | i16 | int | i64 | f32 | f64

pub type Scalar = Nil
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

pub type Primitive = Nil
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
	| []Primitive
	| map[byte]Primitive
	| map[voidptr]Primitive
	| map[u16]Primitive
	| map[u32]Primitive
	| map[u64]Primitive
	| map[i8]Primitive
	| map[i16]Primitive
	| map[int]Primitive
	| map[i64]Primitive
	| map[f32]Primitive
	| map[f64]Primitive
	| map[rune]Primitive
	| map[string]Primitive

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
