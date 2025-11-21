module val

pub struct Nil {}

pub const nil_primitive = Primitive(Nil{})

pub const nil_scalar = Scalar(Nil{})

pub const nil_any = Any(Nil{})
