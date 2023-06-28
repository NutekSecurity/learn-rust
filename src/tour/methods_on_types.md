# Methods on types

In Rust, you can define methods on types (including structs) using the `impl` keyword. Methods allow you to associate behavior with a particular type. Here are some code examples of defining methods on structs in Rust:

```rust
struct Rectangle {
    width: u32,
    height: u32,
}

impl Rectangle {
    // Method to calculate the area of the rectangle
    fn area(&self) -> u32 {
        self.width * self.height
    }

    // Method to check if the rectangle is a square
    fn is_square(&self) -> bool {
        self.width == self.height
    }

    // Associated function to create a new square
    fn square(size: u32) -> Rectangle {
        Rectangle {
            width: size,
            height: size,
        }
    }
}

fn main() {
    let rectangle = Rectangle {
        width: 10,
        height: 20,
    };

    println!("Area: {}", rectangle.area());
    println!("Is Square: {}", rectangle.is_square());

    let square = Rectangle::square(15);
    println!("Square Area: {}", square.area());
    println!("Is Square: {}", square.is_square());
}
```

In this example, we define a `Rectangle` struct with `width` and `height` fields. We then define three methods using `impl`:

1. `area` calculates the area of the rectangle by multiplying the width and height.
2. `is_square` checks if the rectangle is a square by comparing the width and height.
3. `square` is an associated function (similar to a static method) that creates a new square `Rectangle` by setting the same value for the width and height.

In the `main` function, we create an instance of the `Rectangle` struct and call the methods using the dot notation.

Note that the `&self` parameter in the method signatures represents a reference to the struct instance. This allows the methods to access the fields of the struct.

You can define methods on other types as well, including enums and trait objects. The `impl` keyword is used to associate the methods with the respective type, allowing you to encapsulate behavior and functionality within the type itself.

Here is an example of a method on a struct in Rust:
  
  ```rust  
  struct Person {
      name: String,
      age: i32,
  }
  
  impl Person {
      fn say_hello(&self) {
          println!("Hello, my name is {}!", self.name);
      }
  }
  
  fn main() {
      let person = Person {
          name: "Bard".to_string(),
          age: 30,
      };
  
      person.say_hello();
  }
  ```

In this example, the `Person` struct has a method called `say_hello()`. The `say_hello()` method takes no arguments and returns no value. The `say_hello()` method prints a greeting to the console, including the name of the person.

The `impl` keyword is used to define methods on structs. The `impl` keyword is followed by the name of the struct, and then the body of the method. The body of the method can contain any code that you would like to execute.

In this example, the `say_hello()` method takes a reference to the `Person` struct as its argument. This allows the `say_hello()` method to access the data in the `Person` struct.

The `say_hello()` method prints a greeting to the console, including the name of the person. The greeting is printed using the `println!()` macro.

The `main()` function is the entry point for the Rust program. The `main()` function creates a new `Person` struct and then calls the `say_hello()` method on the `Person` struct.

