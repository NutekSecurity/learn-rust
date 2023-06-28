# match

The `match` expression in Rust allows you to perform pattern matching and execute different code blocks based on the matched pattern. It is a powerful construct that can handle various use cases. Here are some examples that demonstrate the usage of `match` in Rust:

Example 1: Matching on Enum Variants
```rust
enum Direction {
    Up,
    Down,
    Left,
    Right,
}

fn print_direction(direction: Direction) {
    match direction {
        Direction::Up => println!("Moving Up"),
        Direction::Down => println!("Moving Down"),
        Direction::Left => println!("Moving Left"),
        Direction::Right => println!("Moving Right"),
    }
}

fn main() {
    let direction = Direction::Left;
    print_direction(direction);
}
```

In this example, we define an `enum` called `Direction` with four variants. The `print_direction` function takes a `Direction` value and uses `match` to match on the different enum variants. Depending on the variant, it executes the corresponding code block.

Example 2: Matching on Numeric Ranges
```rust
fn classify_number(num: i32) {
    match num {
        1..=9 => println!("Single Digit"),
        10..=99 => println!("Double Digit"),
        100..=999 => println!("Triple Digit"),
        _ => println!("Greater than three digits"),
    }
}

fn main() {
    let num = 42;
    classify_number(num);
}
```

In this example, the `classify_number` function takes an `i32` value and uses `match` to match on different ranges of numbers. It uses the `..=` operator to specify inclusive ranges. The `_` (underscore) is a catch-all pattern that matches any value. Depending on the matched pattern, the corresponding code block is executed.

Example 3: Destructuring Tuples
```rust
fn process_tuple(tuple: (i32, bool)) {
    match tuple {
        (0, true) => println!("Tuple matches pattern (0, true)"),
        (x, true) => println!("Tuple matches pattern (_, true), x = {}", x),
        (x, false) => println!("Tuple matches pattern (_, false), x = {}", x),
    }
}

fn main() {
    let tuple1 = (0, true);
    let tuple2 = (42, true);
    let tuple3 = (123, false);

    process_tuple(tuple1);
    process_tuple(tuple2);
    process_tuple(tuple3);
}
```

In this example, the `process_tuple` function takes a tuple of type `(i32, bool)` and uses `match` to destructure the tuple and match on different patterns. It demonstrates the flexibility of pattern matching with tuples.

These examples illustrate a few use cases of the `match` expression in Rust. It allows you to handle different patterns and execute code blocks based on the matched pattern, making it a versatile construct for controlling program flow and handling complex scenarios.

Here are some use cases for the `match` expression in Rust, along with code examples:

- **Matching on enum variants:** The `match` expression can be used to match on the variants of an enum. For example, the following code matches on the variants of the `Color` enum:

	```rust
    enum Color {
        Red,
        Green,
        Blue,
    }
    
    fn main() {
        let color = Color::Red;
    
        match color {
            Color::Red => println!("The color is red"),
            Color::Green => println!("The color is green"),
            Color::Blue => println!("The color is blue"),
        }
    }
	```
    

- **Matching on literal values:** The `match` expression can also be used to match on literal values. For example, the following code matches on the value of the variable `number`:

	```rust
    fn main() {
        let number = 10;
    
        match number {
            1 => println!("The number is 1"),
            2 => println!("The number is 2"),
            3 => println!("The number is 3"),
            _ => println!("The number is not 1, 2, or 3"),
        }
    }
	```
    

- **Matching on ranges:** The `match` expression can also be used to match on ranges. For example, the following code matches on the value of the variable `age`:

	```rust
    fn main() {
        let age = 18;
    
        match age {
            18..=21 => println!("The age is between 18 and 21"),
            22..=30 => println!("The age is between 22 and 30"),
            _ => println!("The age is not between 18 and 30"),
        }
    }
    ```

- **Matching on patterns:** The `match` expression can also be used to match on patterns. Patterns are a way to describe the structure of a value. For example, the following code matches on the value of the variable `person`:

	```rust
	  struct Person {
	      name: String,
	      age: i32,
	  }
	  
	  fn main() {
	      let person = Person {
	          name: "Bard".to_string(),
	          age: 30,
	      };
	 
        let name = format!("{}", "Bard");

	      match person {
	          Person { name: name, .. } => println!("The person's name is Bard"),
	          _ => println!("The person's name is not Bard"),
	      }
	  }
	```    

The `match` expression is a powerful tool for pattern matching in Rust. It can be used to match on enum variants, literal values, ranges, and patterns.
