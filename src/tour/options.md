# Options

Here is an example of an option in Rust:

```rust
  enum Option<T> {
      Some(T),
      None,
  }
 ```

The `Option` enum represents an optional value. The `Option` enum has two variants: `Some` and `None`. The `Some` variant contains a value of type `T`, and the `None` variant does not contain a value.

Here is an example of how to use the `Option` enum:

```rust
  fn divide(numerator: i32, denominator: i32) -> Option<i32> {
      if denominator == 0 {
          return None;
      } else {
          return Some(numerator / denominator);
      }
  }
  
  fn main() {
      let result = divide(10, 2);
  
      if let Some(x) = result {
          println!("The result is {}", x);
      } else {
          println!("Division by zero");
      }
  }
```    

In this example, the `divide()` function takes two integers as arguments and returns an `Option`. The `divide()` function returns `None` if the denominator is 0, and it returns `Some(x)` if the denominator is not 0, where `x` is the result of the division.

The `main()` function calls the `divide()` function and then checks the result. If the result is `Some`, the `main()` function prints the result to the console. If the result is `None`, the `main()` function prints a message to the console.

In Rust, the `Option` type is used to represent the presence or absence of a value. It is commonly used when a value may or may not exist. Here are some code examples demonstrating the usage of `Option` in Rust:

```rust
fn divide(a: i32, b: i32) -> Option<i32> {
    if b != 0 {
        Some(a / b)
    } else {
        None
    }
}

fn main() {
    let result = divide(10, 2);
    match result {
        Some(value) => println!("Result: {}", value),
        None => println!("Cannot divide by zero"),
    }

    let invalid_result = divide(10, 0);
    match invalid_result {
        Some(value) => println!("Result: {}", value),
        None => println!("Cannot divide by zero"),
    }
}
```

In this example, the `divide` function takes two `i32` values as parameters and returns an `Option<i32>`. If the divisor (`b`) is not zero, the function returns `Some(quotient)` containing the result of the division. Otherwise, it returns `None` to indicate an invalid division.

In the `main` function, we call `divide` twice with different arguments. We use a `match` expression to handle the `Option` result. If the result is `Some(value)`, we print the result. If it is `None`, we print an appropriate error message.

Here's another example that demonstrates the usage of `Option` with string manipulation:

```rust
fn get_first_char(s: &str) -> Option<char> {
    s.chars().next()
}

fn main() {
    let word = "Hello";
    let first_char = get_first_char(word);

    match first_char {
        Some(c) => println!("First character: {}", c),
        None => println!("Empty string"),
    }
}
```

In this example, the `get_first_char` function takes a string slice (`&str`) and returns an `Option<char>` representing the first character of the string. If the string is not empty, the function returns `Some(character)`. Otherwise, it returns `None`.

In the `main` function, we call `get_first_char` with a string. We use a `match` expression to handle the `Option` result. If the result is `Some(c)`, we print the first character. If it is `None`, we print an appropriate message.

These examples demonstrate how the `Option` type can be used to handle situations where a value may or may not exist, providing a safe and explicit way to handle potential absence of values in Rust.

