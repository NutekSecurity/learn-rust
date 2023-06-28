# Result

In Rust, the `Result` type is used to represent the result of an operation that can either succeed (`Ok`) or fail (`Err`). It is commonly used for error handling and propagating errors throughout the program. Here are some code examples demonstrating the usage of `Result` in Rust:

```rust
fn divide(a: i32, b: i32) -> Result<i32, String> {
    if b != 0 {
        Ok(a / b)
    } else {
        Err(String::from("Division by zero"))
    }
}

fn main() {
    let result = divide(10, 2);
    match result {
        Ok(value) => println!("Result: {}", value),
        Err(error) => println!("Error: {}", error),
    }

    let invalid_result = divide(10, 0);
    match invalid_result {
        Ok(value) => println!("Result: {}", value),
        Err(error) => println!("Error: {}", error),
    }
}
```

In this example, the `divide` function takes two `i32` values as parameters and returns a `Result<i32, String>`. If the divisor (`b`) is not zero, the function returns `Ok(quotient)` containing the result of the division. Otherwise, it returns `Err(error)` with an error message.

In the `main` function, we call `divide` twice with different arguments. We use a `match` expression to handle the `Result` returned by the function. If the result is `Ok(value)`, we print the result. If it is `Err(error)`, we print the error message.

Here's another example that demonstrates the usage of `Result` with file I/O operations:

```rust
use std::fs::File;
use std::io::{self, Read};

fn read_file_contents(filename: &str) -> Result<String, io::Error> {
    let mut file = File::open(filename)?;
    let mut contents = String::new();
    file.read_to_string(&mut contents)?;
    Ok(contents)
}

fn main() {
    let result = read_file_contents("example.txt");
    match result {
        Ok(contents) => println!("File contents: {}", contents),
        Err(error) => println!("Error: {}", error),
    }
}
```

In this example, the `read_file_contents` function takes a filename as a parameter and returns a `Result<String, io::Error>`. It attempts to open the file, read its contents, and return the contents as a `String` if successful. Otherwise, it returns `Err(error)` with an `io::Error` indicating the encountered error.

In the `main` function, we call `read_file_contents` with a filename. We use a `match` expression to handle the `Result` returned by the function. If the result is `Ok(contents)`, we print the file contents. If it is `Err(error)`, we print the encountered error.

These examples illustrate how the `Result` type can be used to handle operations that may produce successful results or errors, providing a robust error handling mechanism in Rust.

Here is an example of the Result return type in Rust:

```rust
  enum Result<T, E> {
      Ok(T),
      Err(E),
  }
```

The `Result` enum represents the result of a computation that can either be successful (Ok variant) or unsuccessful (Err variant). The `T` and `E` type parameters represent the types of successful and unsuccessful results, respectively.

Here is an example of how to use the `Result` enum:

```rust
  fn divide(numerator: i32, denominator: i32) -> Result<i32, String> {
      if denominator == 0 {
          return Err(format!("{}", "Division by zero"));
      } else {
          return Ok(numerator / denominator);
      }
  }
  
  fn main() {
      let result = divide(10, 2);
  
      if let Ok(x) = result {
          println!("The result is {}", x);
      } else {
          println!("Error: {}", result.err().unwrap());
      }
  }
 ```   

In this example, the `divide()` function takes two integers as arguments and returns a `Result`. The `divide()` function returns `Err` if the denominator is 0, and it returns `Ok(x)` if the denominator is not 0, where `x` is the result of the division.

The `main()` function calls the `divide()` function and then checks the result. If the result is `Ok`, the `main()` function prints the result to the console. If the result is `Err`, the `main()` function prints the error message to the console. 
