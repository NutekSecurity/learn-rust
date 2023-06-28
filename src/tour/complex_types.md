# Complex types in Rust

Here are some of the complex types in Rust, along with code examples:

- **Structs:** Structs are used to group together related data. For example, the following code defines a struct called `Person` that has two fields, `name` and `age`:

	```rust
	struct Person {
	    name: String,
	    age: i32,
	}
	```
- **Enums:** Enums are used to represent a set of possible values. For example, the following code defines an enum called `Color` that has three possible values, `Red`, `Green`, and `Blue`:

	```rust
	enum Color {
        Red,
        Green,
        Blue,
	}
	```
- **Arrays:** Arrays are used to store a fixed-size collection of elements. For example, the following code defines an array called `numbers` that can store up to 10 integers:

	`let mut numbers: [i32; 10] = [0; 10];`

- **Tuples:** Tuples are used to store a heterogeneous collection of elements. For example, the following code defines a tuple called `coordinates` that stores two elements, `x` and `y`:

	`let coordinates = (10, 20);`

Here is a table of some of the complex types in Rust, along with their code examples:

| Type | Code Example | 
| --- | --- |
| `Struct` | `struct Person { name: String, age: i32 }` | 
| `Enum` | `enum Color { Red, Green, Blue }` | 
| `Array` | `let mut numbers: [i32; 10] = [0; 10];` | 
| `Tuple` | `let coordinates = (10, 20);` | 

Rust provides several complex types that allow you to represent more structured and sophisticated data. Here are some examples of complex types in Rust:

1. Structs: Structs allow you to define your own custom data types with named fields.

```rust
struct Person {
    name: String,
    age: u32,
    is_student: bool,
}

fn main() {
    let person = Person {
        name: String::from("John"),
        age: 25,
        is_student: true,
    };

    println!("Name: {}", person.name);
    println!("Age: {}", person.age);
    println!("Is student: {}", person.is_student);
}
```

In this example, we define a `Person` struct with fields `name`, `age`, and `is_student`. We create an instance of the struct and access its fields using dot notation.

2. Enums: Enums allow you to define a type that can have different variants.

```rust
enum Result<T, E> {
    Ok(T),
    Err(E),
}

fn divide(a: i32, b: i32) -> Result<i32, String> {
    if b != 0 {
        Result::Ok(a / b)
    } else {
        Result::Err(String::from("Division by zero"))
    }
}

fn main() {
    let result = divide(10, 2);
    match result {
        Result::Ok(value) => println!("Result: {}", value),
        Result::Err(error) => println!("Error: {}", error),
    }
}
```

In this example, we define a generic `Result` enum that can either be `Ok` with a value of type `T` or `Err` with a value of type `E`. We use this enum to represent the result of a division operation, returning either the quotient or an error message.

3. Vectors: Vectors are dynamically-sized, growable arrays that allow you to store multiple values of the same type.

```rust
fn main() {
    let mut numbers: Vec<i32> = Vec::new();
    numbers.push(10);
    numbers.push(20);
    numbers.push(30);

    for number in &numbers {
        println!("{}", number);
    }
}
```

In this example, we create a `numbers` vector and add three elements to it. We then iterate over the vector using a for loop and print each element.

These are just a few examples of the complex types available in Rust. Rust also provides features like tuples, arrays, slices, hash maps, and more that allow you to work with complex data structures and collections.
