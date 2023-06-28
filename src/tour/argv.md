# Command line arguments

In Rust, you can access command line arguments using the `std::env` module. Here are a few examples that demonstrate how to work with command line arguments in Rust:

Example 1: Printing all command line arguments
```rust
use std::env;

fn main() {
    let args: Vec<String> = env::args().collect();

    for arg in &args {
        println!("{}", arg);
    }
}
```

In this example, the `env::args()` function returns an iterator of command line arguments. We collect these arguments into a `Vec<String>` using the `collect()` method. Then, we iterate over the vector and print each argument.

Example 2: Getting a specific command line argument
```rust
use std::env;

fn main() {
    let args: Vec<String> = env::args().collect();

    if let Some(arg) = args.get(1) {
        println!("The second argument is: {}", arg);
    } else {
        println!("No second argument provided.");
    }
}
```

In this example, we access a specific command line argument by indexing the `args` vector. The first argument (`args[0]`) is the path to the executable itself. Here, we check if the second argument (`args[1]`) is present using the `get()` method. If it exists, we print its value. Otherwise, we indicate that no second argument was provided.

Example 3: Parsing command line arguments as integers
```rust
use std::env;

fn main() {
    let args: Vec<String> = env::args().collect();

    if let Some(arg) = args.get(1) {
        let num: i32 = arg.parse().expect("Invalid number");
        println!("The parsed number is: {}", num);
    } else {
        println!("No argument provided.");
    }
}
```

In this example, we parse the second command line argument as an integer using the `parse()` method. We specify the type we want to parse (`i32` in this case) and handle any parsing errors using the `expect()` method. If the argument is successfully parsed, we print its value. Otherwise, we indicate that the provided value is not a valid number.

These examples demonstrate how to work with command line arguments in Rust. You can customize them based on your specific needs and manipulate the arguments as required for your program.

Here are a few examples of how to use command line arguments in Rust:

```rust
  fn main() {
      let args: Vec<String> = std::env::args().collect();
  
      if args.len() != 2 {
          println!("Usage: my_program <file>");
          return;
      }
  
      let filename = args[1].clone();
  
      // Do something with the file.
  }
```  

In this example, the `main()` function takes a vector of strings as an argument. The vector of strings contains the command line arguments that were passed to the program.

The `args.len()` function returns the number of elements in the vector of strings. If the number of elements is not equal to 2, the `main()` function prints a usage message and returns.

The `args[1]` function returns the second element in the vector of strings. In this case, the second element is the filename that was passed to the program.

The `clone()` method creates a copy of the `filename` string. The `clone()` method is necessary because the `main()` function is about to return, and the `filename` variable will be dropped.

The `main()` function then does something with the file.

Here is an example of how to run the program:

```shell
cargo run my_file.txt
```

When you run the program, the program will read the file `my_file.txt` and do something with it.

Here is another example of how to use command line arguments in Rust:

```rust
fn main() {
    let args: Vec<String> = std::env::args().collect();

    let flag = args.contains(&"--flag".to_string());

    if flag {
        println!("The flag was passed.");
    } else {
        println!("The flag was not passed.");
    }
}
```    

In this example, the `main()` function checks if the `-flag` flag was passed to the program. The `args.contains()` method returns a boolean value that indicates whether or not the `-flag` flag was passed to the program.

If the `-flag` flag was passed to the program, the `main()` function prints a message to the console. If the `-flag` flag was not passed to the program, the `main()` function prints a different message to the console.

Here is an example of how to run the program:

```shell
cargo run --flag
```    

When you run the program with the `--flag` flag, the program will print the message "The flag was passed."
