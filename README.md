# 🧩 val — Extended Value Typing for V

> Flexible and type-safe value system for [V](https://vlang.io) —
from primitives to complex data via a unified `Any` type.

---

## 🌟 Overview

`val` provides a **unified, extensible, and type-safe abstraction**
for working with *any kind of data* in V —
from simple primitives to deeply nested structures.

It bridges the gap between strict static typing and dynamic data manipulation, serialization, validation, and schema-based transformation.

---

## 🧠 Concept

In V, there’s no built-in `any` or `mixed` type.  
`val` introduces that concept safely, inspired by the internal designs of:

- [`toml.Any`](https://github.com/vlang/v/blob/master/vlib/toml/any.v)
- [`orm.Primitive`](https://github.com/vlang/v/tree/master/vlib/orm)

and reimagined from scratch to provide a **clean, extensible API**.

---

## ⚙️ Core Types

### 🔸 `Primitive`

Represents all **basic scalar types** that can be stored or compared directly.

```v
type Primitive =
  bool
  | rune
  | u8 | u16 | u32 | u64
  | i8 | i16 | int | i64
  | f32 | f64
  | string
  | time.Time
  | nil
````

---

### 🔸 `Any`

A generic and flexible container that can represent **any value**:

```v
type Any = Primitive
  []Any
  | map[string]Any
  | StructValue
  | FunctionValue
  | Nil
```

Each variant can be introspected, converted, serialized, and validated dynamically.

---

## 🧩 Example Usage

### 🪶 Basic primitives

```v
import siguici.val

fn main() {
  x := val.from(42)
  println(x.kind())      // → .int
  println(x.to_string()) // → "42"
}
```

### 🧮 Complex structures

```v
import siguici.val

fn main() {
  data := val.from({
    'name': 'Vlang',
    'features': ['fast', 'safe', 'simple'],
    'stats': {
      'stars': 40000
      'version': '0.4'
    }
  })

  println(data['name'])              // → "Vlang"
  println(data['stats']['version'])  // → "0.4"
  println(data.to_json())            // → JSON representation
}
```

---

## 🔧 Features

✅ Unified `Any` abstraction
✅ Works with all V primitive types
✅ Supports nested arrays and maps
✅ Easy serialization (`to_json`, `to_toml`, `to_yaml`, …)
✅ Type-safe conversions and introspection
✅ Schema-based validation (planned)
✅ No dependency on `orm` or `toml` — completely standalone

---

## 📦 Installation

```bash
v install siguici.val
```

Then import it:

```v
import siguici.val
```

---

## 🧰 Planned Extensions

- 🔍 Schema-based validation (`val.Schema`)
- 🔄 Dynamic serialization and deserialization adapters
- ⚡ Runtime type reflection utilities
- 🧬 Function and struct wrappers (`FunctionValue`, `StructValue`)
- 🧾 Full JSON/TOML/YAML interoperability

---

## 📘 API Sketch

| Method                | Description                                                |
| --------------------- | ---------------------------------------------------------- |
| `val.from(value any)` | Create a `val.Any` instance from any value                 |
| `val.is_primitive()`  | Check if a value is a primitive                            |
| `val.kind()`          | Returns the underlying kind (`.int`, `.string`, `.map`, …) |
| `val.to_string()`     | Converts the value to string                               |
| `val.to_json()`       | Converts to JSON                                           |
| `val.as<T>() ?T`      | Attempts to cast back to a specific type                   |
| `val.clone()`         | Deep clone of the value                                    |
| `val.is_nil()`        | Check for `nil`                                            |

---

## 🧑‍💻 Example: Dynamic Schema Validation *(WIP)*

```v
schema := val.schema({
  'name': val.string(),
  'age': val.int().min(0),
  'emails': val.array(val.string()),
})

user_data := val.from({
  'name': 'Emmanuel',
  'age': 27,
  'emails': ['a@x.com', 'b@y.com'],
})

result := schema.validate(user_data)
println(result.is_valid) // true
```

---

## 🧾 License

MIT © [Kessé Emmanuel SIGUI](https://github.com/siguici)

---

## 💡 Inspiration

This library was inspired by:

- Dynamic typing systems in languages like Go (`interface{}`),
Rust (`serde_json::Value`), and TypeScript (`any`)
- The internal designs of `toml.Any` and `orm.Primitive` from the V standard library

---

> ✨ *“val bridges the gap between static and dynamic worlds in V —
safely, simply, and beautifully.”*
