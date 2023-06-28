# Generic types

Generic types in Rust are a way to write code that can work with different types of data. This can make your code more reusable and easier to understand.

For example, let's say you want to write a function that can print the length of a list of any type. You could write the function like this:

```rust
  fn print_length<T>(list: &[T]) -> usize {
      list.len()
  }
```

The `<T>` in the function signature is a generic type parameter. This means that the function can work with any type that is compatible with the `T` type. In this case, the `T` type must be a type that can be stored in a list.

To use the function, you would pass it a list of any type. For example, you could pass it a list of integers, a list of strings, or a list of any other type that can be stored in a list.

The following code shows how to use the `print_length()` function:

```rust
  let list_of_integers = vec![1, 2, 3, 4, 5];
  let list_of_strings = vec!["Hello", "World", "Rust"];
  
  print_length(&list_of_integers);
  print_length(&list_of_strings);
```

The `print_length()` function will print the length of both the list of integers and the list of strings.

Generic types can be a powerful tool for writing reusable and efficient code. They can also make your code more concise and easier to understand.

Here are some other examples of generic types in Rust:

- The `Vec<T>` type is a generic vector type. This means that a `Vec<T>` can store any type that is compatible with the `T` type.
- The `Option<T>` type is a generic option type. This means that an `Option<T>` can store either a value of type `T` or the `None` value.
- The `Result<T, E>` type is a generic result type. This means that a `Result<T, E>` can store either a value of type `T` or an error of type `E`.

In Rust, generic types allow you to define functions, structs, and enums that can work with different data types. This promotes code reusability and flexibility. Here's a clear example of generic types in Rust:

```rust
// A generic struct that can hold a value of any type
struct Container<T> {
    value: T,
}

// A generic function that takes two values of the same type and returns their sum
fn add<T>(a: T, b: T) -> T
where
    T: std::ops::Add<Output = T>,
{
    a + b
}

fn main() {
    // Create a Container with an i32 value
    let container_i32 = Container { value: 42 };
    println!("Container (i32): {}", container_i32.value);

    // Create a Container with a char value
    let container_char = Container { value: 'a' };
    println!("Container (char): {}", container_char.value);

    // Call the add function with two i32 values
    let sum_i32 = add(10, 20);
    println!("Sum (i32): {}", sum_i32);

    // Call the add function with two f64 values
    let sum_f64 = add(3.14, 2.71);
    println!("Sum (f64): {}", sum_f64);
}
```

In this example, we define a generic struct called `Container` that can hold a value of any type. The generic type parameter `T` is used to represent the type of the value.

We also define a generic function called `add` that takes two values of the same type and returns their sum. The type parameter `T` is constrained to implement the `Add` trait using the `where` clause. This ensures that the `+` operator is supported for the type `T`.

In the `main` function, we demonstrate the usage of the generic struct and function. We create a `Container` with an `i32` value and a `char` value, and print their respective values. Then, we call the `add` function with `i32` values and `f64` values, and print the resulting sums.

By using generic types, we can write code that is agnostic to the specific data types it operates on, increasing code reuse and flexibility. The Rust compiler will generate specialized versions of the generic code for each concrete type used, ensuring type safety and performance.

