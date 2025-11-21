module val

pub type Primitive = Nil
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
	| []Primitive

fn bool_to_primitive(b bool) Primitive {
	return Primitive(b)
}

fn option_bool_to_primitive(b ?bool) Primitive {
	return if b_ := b { Primitive(b_) } else { nil_primitive }
}

fn array_bool_to_primitive(b []bool) Primitive {
	return Primitive(b.map(bool_to_primitive(it)))
}

fn f32_to_primitive(b f32) Primitive {
	return Primitive(b)
}

fn option_f32_to_primitive(b ?f32) Primitive {
	return if b_ := b { Primitive(b_) } else { nil_primitive }
}

fn array_f32_to_primitive(b []f32) Primitive {
	return Primitive(b.map(f32_to_primitive(it)))
}

fn f64_to_primitive(b f64) Primitive {
	return Primitive(b)
}

fn option_f64_to_primitive(b ?f64) Primitive {
	return if b_ := b { Primitive(b_) } else { nil_primitive }
}

fn array_f64_to_primitive(b []f64) Primitive {
	return Primitive(b.map(f64_to_primitive(it)))
}

fn i8_to_primitive(b i8) Primitive {
	return Primitive(b)
}

fn option_i8_to_primitive(b ?i8) Primitive {
	return if b_ := b { Primitive(b_) } else { nil_primitive }
}

fn array_i8_to_primitive(b []i8) Primitive {
	return Primitive(b.map(i8_to_primitive(it)))
}

fn i16_to_primitive(b i16) Primitive {
	return Primitive(b)
}

fn option_i16_to_primitive(b ?i16) Primitive {
	return if b_ := b { Primitive(b_) } else { nil_primitive }
}

fn array_i16_to_primitive(b []i16) Primitive {
	return Primitive(b.map(i16_to_primitive(it)))
}

fn int_to_primitive(b int) Primitive {
	return Primitive(b)
}

fn option_int_to_primitive(b ?int) Primitive {
	return if b_ := b { Primitive(b_) } else { nil_primitive }
}

fn array_int_to_primitive(b []int) Primitive {
	return Primitive(b.map(int_to_primitive(it)))
}

// int_literal_to_primitive handles int literal value
fn int_literal_to_primitive(b int) Primitive {
	return Primitive(b)
}

fn option_int_literal_to_primitive(b ?int) Primitive {
	return if b_ := b { Primitive(b_) } else { nil_primitive }
}

fn array_int_literal_to_primitive(b []int) Primitive {
	return Primitive(b.map(int_literal_to_primitive(it)))
}

// float_literal_to_primitive handles float literal value
fn float_literal_to_primitive(b f64) Primitive {
	return Primitive(b)
}

fn option_float_literal_to_primitive(b ?f64) Primitive {
	return if b_ := b { Primitive(b_) } else { nil_primitive }
}

fn array_float_literal_to_primitive(b []f64) Primitive {
	return Primitive(b.map(float_literal_to_primitive(it)))
}

fn i64_to_primitive(b i64) Primitive {
	return Primitive(b)
}

fn option_i64_to_primitive(b ?i64) Primitive {
	return if b_ := b { Primitive(b_) } else { nil_primitive }
}

fn array_i64_to_primitive(b []i64) Primitive {
	return Primitive(b.map(i64_to_primitive(it)))
}

fn u8_to_primitive(b u8) Primitive {
	return Primitive(b)
}

fn option_u8_to_primitive(b ?u8) Primitive {
	return if b_ := b { Primitive(b_) } else { nil_primitive }
}

fn array_u8_to_primitive(b []u8) Primitive {
	return Primitive(b.map(u8_to_primitive(it)))
}

fn u16_to_primitive(b u16) Primitive {
	return Primitive(b)
}

fn option_u16_to_primitive(b ?u16) Primitive {
	return if b_ := b { Primitive(b_) } else { nil_primitive }
}

fn array_u16_to_primitive(b []u16) Primitive {
	return Primitive(b.map(u16_to_primitive(it)))
}

fn u32_to_primitive(b u32) Primitive {
	return Primitive(b)
}

fn option_u32_to_primitive(b ?u32) Primitive {
	return if b_ := b { Primitive(b_) } else { nil_primitive }
}

fn array_u32_to_primitive(b []u32) Primitive {
	return Primitive(b.map(u32_to_primitive(it)))
}

fn u64_to_primitive(b u64) Primitive {
	return Primitive(b)
}

fn option_u64_to_primitive(b ?u64) Primitive {
	return if b_ := b { Primitive(b_) } else { nil_primitive }
}

fn array_u64_to_primitive(b []u64) Primitive {
	return Primitive(b.map(u64_to_primitive(it)))
}

fn string_to_primitive(b string) Primitive {
	return Primitive(b)
}

fn option_string_to_primitive(b ?string) Primitive {
	return if b_ := b { Primitive(b_) } else { nil_primitive }
}

fn array_string_to_primitive(b []string) Primitive {
	return Primitive(b.map(string_to_primitive(it)))
}
