# Functions

Here are some uses of functions in Rust and examples:

- **Functions can be used to group related code together.** This makes the code easier to read and understand, and it also makes the code easier to reuse.
- **Functions can be used to pass data between different parts of a program.** This makes the code more modular, and it also makes the code easier to test.
- **Functions can be used to abstract away complex code.** This makes the code easier to understand and maintain, and it also makes the code more reusable.

Here are some examples of functions in Rust:

```rust
  fn factorial(n: u32) -> u32 {
      if n == 0 {
          return 1;
      } else {
          return n * factorial(n - 1);
      }
  }
  
  fn main() {
      let result = factorial(5);
      println!("The factorial of 5 is {}", result);
  }
```    

In this example, the `factorial()` function takes a number as an argument and returns the factorial of that number. The factorial of a number is the product of all the numbers from 1 to that number.

The `main()` function calls the `factorial()` function with the number 5 as an argument. The `factorial()` function returns the factorial of 5, which is 120. The `main()` function prints the factorial of 5 to the console.

Another example of a function in Rust is the `println!()` macro. The `println!()` macro takes a format string and a list of arguments as input. The `println!()` macro prints the format string to the console, along with the arguments.

For example, the following code prints the message "Hello, world!" to the console:

```rust
println!("Hello, world!");
```

Functions in Rust allow you to define reusable blocks of code that can be called from various parts of your program. Functions provide a way to organize and modularize your code. Here are a few examples that showcase the use of functions in Rust:

Example 1: Simple function without arguments or return value
```rust
fn greet() {
    println!("Hello, world!");
}

fn main() {
    greet();
}
```

In this example, the `greet` function prints a greeting message to the console. It doesn't take any arguments and doesn't return a value. In the `main` function, we call the `greet` function to execute its code.

Example 2: Function with arguments and return value
```rust
fn add_numbers(a: i32, b: i32) -> i32 {
    a + b
}

fn main() {
    let result = add_numbers(2, 3);
    println!("Result: {}", result);
}
```

In this example, the `add_numbers` function takes two `i32` arguments and returns their sum as an `i32`. In the `main` function, we call `add_numbers` with arguments `2` and `3`, and store the result in the `result` variable. Then, we print the result to the console.

Example 3: Function with mutable arguments
```rust
fn increment_value(mut value: i32) {
    value += 1;
    println!("Value inside function: {}", value);
}

fn main() {
    let mut number = 5;
    increment_value(number);
    println!("Value after function call: {}", number);
}
```

In this example, the `increment_value` function takes a mutable `i32` argument. Inside the function, the value is incremented by `1`. Even though the argument is mutable, it doesn't affect the original value passed from the `main` function. The function prints the modified value inside the function, and then in the `main` function, we print the original value to demonstrate that it remains unchanged.

These examples illustrate the use of functions in Rust for code organization, reusability, and encapsulation of logic. Functions allow you to write modular and readable code by breaking down complex tasks into smaller, manageable units.

