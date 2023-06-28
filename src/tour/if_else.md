# if, else if, else

Here are some examples of how to use `if`, `else if`, and `else` in Rust:

```rust
fn main() {
    let number = 5;

    if number > 10 {
        println!("The number is greater than 10");
    } else if number > 5 {
        println!("The number is greater than 5");
    } else {
        println!("The number is less than or equal to 5");
    }
}
```
    

In this example, the `if` statement checks if the number is greater than 10. If the number is greater than 10, the `if` statement will print the message "The number is greater than 10" to the console. Otherwise, the `if` statement will not print anything.

The `else if` statement checks if the number is greater than 5. If the number is greater than 5, but not greater than 10, the `else if` statement will print the message "The number is greater than 5" to the console. Otherwise, the `else if` statement will not print anything.

The `else` statement is a catch-all statement that will be executed if none of the other conditions are met. In this case, the `else` statement will print the message "The number is less than or equal to 5" to the console.

Here is another example of how to use `if`, `else if`, and `else`:

```rust
  fn main() {
      let number = 3;
  
      let result = match number {
          1 => "One",
          2 => "Two",
          3 => "Three",
          _ => "Unknown",
      };
  
      println!("The number is {}", result);
  }
 ```   

In this example, the `match` statement is used to check the value of the variable `number` and return a different string depending on the value. The `match` statement is a powerful tool for controlling the flow of a program.

In Rust, you can use `if`, `else if`, and `else` statements for controlling the flow of your program based on different conditions. Here are some examples that showcase the usage of conditional statements in Rust:

Example 1: Simple if-else statement
```rust
fn main() {
    let number = 10;

    if number > 0 {
        println!("Number is positive");
    } else {
        println!("Number is non-positive");
    }
}
```

In this example, the program checks if the `number` variable is greater than `0`. If the condition is true, it prints "Number is positive". Otherwise, it executes the code within the `else` block and prints "Number is non-positive".

Example 2: if-else if-else statement
```rust
fn main() {
    let number = 0;

    if number > 0 {
        println!("Number is positive");
    } else if number < 0 {
        println!("Number is negative");
    } else {
        println!("Number is zero");
    }
}
```

In this example, the program checks the value of the `number` variable using multiple conditions. If the `number` is greater than `0`, it prints "Number is positive". If the `number` is less than `0`, it prints "Number is negative". If none of the previous conditions are true, it executes the code within the `else` block and prints "Number is zero".

Example 3: Ternary operator-like expression
```rust
fn main() {
    let number = 10;
    let result = if number > 0 { "positive" } else { "non-positive" };
    println!("Number is {}", result);
}
```

In this example, the program assigns a value to the `result` variable using a ternary operator-like expression. If the `number` is greater than `0`, it assigns the string "positive" to `result`. Otherwise, it assigns the string "non-positive". Finally, it prints the value of `result`.

These examples demonstrate the usage of conditional statements in Rust (`if`, `else if`, and `else`). You can use these control flow constructs to execute different blocks of code based on specific conditions in your program.

