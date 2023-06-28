# Loops

In Rust, you can use loops to repeat a block of code until a certain condition is met. Rust provides several loop constructs, including `loop`, `while`, and `for` loops. Here are some examples that demonstrate the use of loops in Rust:

Example 1: `loop` loop
```rust
fn main() {
    let mut count = 0;

    loop {
        println!("Count: {}", count);
        count += 1;

        if count >= 5 {
            break;
        }
    }
}
```

In this example, the `loop` loop repeats indefinitely until the `break` statement is encountered. We start with `count` initialized to `0` and print its value in each iteration. After each iteration, we increment `count` by `1`. Once `count` reaches `5` or more, we break out of the loop using the `break` statement.

Example 2: `while` loop
```rust
fn main() {
    let mut count = 0;

    while count < 5 {
        println!("Count: {}", count);
        count += 1;
    }
}
```

In this example, the `while` loop repeats the block of code as long as the condition `count < 5` is true. We initialize `count` to `0` and print its value in each iteration. After each iteration, we increment `count` by `1`. The loop continues until `count` becomes `5` or greater, at which point the loop terminates.

Example 3: `for` loop
```rust
fn main() {
    let numbers = [1, 2, 3, 4, 5];

    for number in numbers.iter() {
        println!("Number: {}", number);
    }
}
```

In this example, the `for` loop iterates over each element of the `numbers` array using the `iter()` method. In each iteration, the current element is assigned to the variable `number`, and we print its value. The loop automatically terminates after all elements have been processed.

These examples demonstrate the usage of different types of loops in Rust: `loop`, `while`, and `for` loops. You can choose the loop construct that suits your needs based on the specific requirements of your program.

Here are some examples of loops in Rust:

- **The `loop` keyword**

The `loop` keyword is used to create an infinite loop. An infinite loop is a loop that never ends. The `loop` keyword can be used to create a simple counter, for example:

```rust
fn main() {
    let mut counter = 0;
    loop {
        println!("The counter is {}", counter);
        counter += 1;
    }
}
 ```   

This code will print the counter to the console, and then increment the counter by 1. The loop will continue to run until the program is terminated.

> in while in terminal session press `ctrl` and `c`

- **The `while` keyword**

The `while` keyword is used to create a loop that runs while a condition is true. The `while` loop can be used to print the numbers from 1 to 10, for example:

```rust
  fn main() {
      let mut number = 1;
      while number <= 10 {
          println!("{}", number);
          number += 1;
      }
  }
 ```   

This code will print the numbers from 1 to 10 to the console. The loop will continue to run while the number is less than or equal to 10.

- **The `for` keyword**

The `for` keyword is used to create a loop that iterates over a collection. The `for` loop can be used to print the elements of a vector, for example:

```rust
fn main() {
    let numbers = vec![1, 2, 3, 4, 5];
    for number in numbers {
        println!("{}", number);
    }
}
```    

This code will print the elements of the vector `numbers` to the console. The loop will iterate over the vector, and print each element to the console.


