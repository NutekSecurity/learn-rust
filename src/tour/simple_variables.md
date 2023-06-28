# Defining simple variables in Rust

In Rust, you can define variables using the `let` keyword. Rust is a statically-typed language, which means that you need to specify the type of the variable explicitly or let the compiler infer it based on the assigned value. Here's an example of defining variables in Rust:

```rust
fn main() {
    // Variable with explicit type annotation
    let number: i32 = 42;

    // Variable with type inference
    let name = "John";

    // Mutable variable
    let mut counter = 0;
    counter += 1;

    // Printing variables
    println!("Number: {}", number);
    println!("Name: {}", name);
    println!("Counter: {}", counter);
}
```

In this example, we define three variables:

1. `number` is an `i32` variable with an explicit type annotation. It is assigned the value `42`.
2. `name` is a string variable. The type is inferred by the compiler based on the assigned value `"John"`.
3. `counter` is a mutable variable defined with the `mut` keyword. It is initially assigned the value `0` and then incremented by `1`.

Rust provides various built-in simple types, including:

- Signed integers: `i8`, `i16`, `i32`, `i64`, `i128`, `isize`
- Unsigned integers: `u8`, `u16`, `u32`, `u64`, `u128`, `usize`
- Floating-point numbers: `f32`, `f64`
- Booleans: `bool` (either `true` or `false`)
- Characters: `char`
- Strings: `String` (a growable, UTF-8 encoded string) and string slices (`&str`)
- Arrays: [`T; N]` (a fixed-size array of elements of type `T`, where `N` is the length)
- Tuples: `(T1, T2, ...)`

These are just a few examples of the simple types available in Rust. You can also create your own custom types using structs, enums, and more.

Remember to add the necessary dependencies and dependencies versions in your Cargo.toml file before running the Rust program.

To define a variable in Rust, you use the `let` keyword. The `let` keyword is followed by the name of the variable, the type of the variable, and the value of the variable. For example, the following code defines a variable called `x` of type `i32`, and assigns the value `10` to it:

```rust
let x: i32 = 10;
```    

Rust has a variety of simple types that you can use to define variables. Some of the most common simple types are:

- `i32`: This type represents a 32-bit signed integer.
- `u32`: This type represents a 32-bit unsigned integer.
- `f64`: This type represents a 64-bit floating-point number.
- `char`: This type represents a single Unicode character.
- `bool`: This type represents a Boolean value, which can be either `true` or `false`.

You can also define variables of more complex types, such as structs, enums, and arrays.

Here is a table of some of the simple types in Rust, along with their sizes and ranges:

| Type | Size | Range | 
| --- | --- | --- |
| `i8` | 1 byte | -128 to 127 | 
| `i16` | 2 bytes | -32,768 to 32,767 | 
| `i32` | 4 bytes | -2,147,483,648 to 2,147,483,647 | 
| `i64` | 8 bytes | -9,223,372,036,854,775,808 to 9,223,372,036,854,775,807 | 
| `u8` | 1 byte | 0 to 255 | 
| `u16` | 2 bytes | 0 to 65,535 | 
| `u32` | 4 bytes | 0 to 4,294,967,295 | 
| `u64` | 8 bytes | 0 to 18,446,744,073,709,551,615 | 
| `f32` | 4 bytes | Approximately ±3.402823466 × 10^38 | 
| `f64` | 8 bytes | Approximately ±1.7976931348623157 × 10^308 | 
| `char` | 4 bytes | Unicode code point | 
| `bool` | 1 byte | `true` or `false` | 

