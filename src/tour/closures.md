# Closures

Here are some examples of how to use closures in Rust:

- **As anonymous functions:** Closures can be used as anonymous functions, which means that they can be defined without a name. This can be useful for short, one-off functions that you don't need to use again. For example, the following code defines a closure that takes two numbers as input and returns their sum:

	```rust 
	  let sum_closure = |x: i32, y: i32| x + y;
	  
	  let result = sum_closure(10, 20);
	  
	  println!("The sum is {}", result);
	```    

- **As callback functions:** Closures can also be used as callback functions, which means that they can be passed to other functions as a parameter. This can be useful for when you want to run some code after a certain event has happened. For example, the following code defines a function called `do_something()` that takes a closure as a parameter. The closure will be called after a delay of 1 second.

	```rust
      use std::time::Duration;
      use std::thread;

	  fn do_something(closure: &mut dyn FnMut()) {
	      thread::sleep(Duration::from_secs(1));
	      closure();
	  }
	  
	  let mut closure = || println!("Something was done!");
	  
	  do_something(&mut closure);
	```    

- **As input parameters:** Closures can also be used as input parameters to other functions. This can be useful for when you want to pass a function that has been defined locally to another function. For example, the following code defines a function called `apply_closure()` that takes a closure as a parameter and calls the closure.

	```rust
	  fn apply_closure(closure: &mut dyn FnMut(i32)) {
	      closure(10);
	  }
	  
	  let mut closure = |x| println!("The number is {}", 10);
	  
	  apply_closure(&mut closure);
	```

In Rust, closures are anonymous functions that can capture variables from their surrounding environment. They are similar to lambda functions in other programming languages. Closures are useful when you need to create a small, self-contained function that can be passed around or used as an argument to other functions. Here's an example that demonstrates the usage of closures in Rust:

```rust
fn main() {
    let num = 5;

    // Closure that captures `num` and adds it to the input value
    let add_num = |x| x + num;

    // Calling the closure
    let result = add_num(10);
    println!("Result: {}", result);

    // Iterating over a vector using a closure
    let numbers = vec![1, 2, 3, 4, 5];
    let doubled: Vec<i32> = numbers.iter()
        .map(|x| x * 2)
        .collect();
    println!("Doubled: {:?}", doubled);

    // Using closure as a callback function
    process_numbers(numbers, |num| {
        println!("Processing number: {}", num);
        // Additional logic here
    });
}

fn process_numbers(numbers: Vec<i32>, callback: impl Fn(i32)) {
    for num in numbers {
        callback(num);
    }
}
```

In this example, we first define a closure named `add_num` that captures the variable `num` from its surrounding environment. The closure takes an input value `x` and adds `num` to it. We then call the closure with an input value of `10` and print the result.

Next, we demonstrate the use of closures in iterating over a vector. We use the `map()` method on the vector `numbers` to apply a closure that doubles each element. The resulting values are collected into a new vector named `doubled`, which is then printed.

Finally, we show how closures can be used as callback functions. The `process_numbers()` function takes a vector of numbers and a closure as arguments. It iterates over the numbers and invokes the closure for each element. In this case, the closure simply prints the processed number, but you can add additional logic as needed.

Closures in Rust are powerful tools for creating flexible and reusable code. They allow you to encapsulate behavior and capture variables from the surrounding context. With closures, you can write concise and expressive code, especially in scenarios where you need to pass functions as arguments or create dynamic behavior.
