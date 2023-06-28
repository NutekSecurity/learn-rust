# mod

In Rust, a module is a collection of items, such as functions, structs, traits, impl blocks, and even other modules. Modules can be used to organize code and to control the visibility of items.

To define a module, you use the `mod` keyword followed by the name of the module. For example:

```rust
mod my_module {
  // This is the contents of the `my_module` module.
}
```

The `my_module` module can contain any number of items. For example:

```rust
mod my_module {
  fn my_function() {
    // This is the definition of the `my_function` function.
  }

  struct MyStruct {
    // This is the definition of the `MyStruct` struct.
  }
}
```

To access an item from a module, you use the `crate::module_name::item_name` syntax. For example, to access the `my_function` function from the `my_module` module, you would use the following syntax:

```rust
fn main() {
  crate::my_module::my_function();
}
```

You can also use the `use` keyword to import a module into the current scope. This allows you to access the items in the module without having to use the `crate::module_name::` syntax. For example:

```rust
use my_module;

fn main() {
  my_function();
}
```

Here is an example of a complete Rust program that uses modules:

```rust
mod my_module {
  pub fn my_function() {
    println!("This is the `my_function` function from the `my_module` module.");
  }

  pub struct MyStruct {
    pub x: i32,
    pub y: i32,
  }
}

fn main() {
  // use from another file
  //use my_module;

  my_module::my_function();

  let my_struct = my_module::MyStruct { x: 10, y: 20 };
  println!("The coordinates of the `my_struct` struct are: ({}, {})", my_struct.x, my_struct.y);
}
```

This program defines two modules: the `my_module` module and the `main` module. The `my_module` module defines a function called `my_function` and a struct called `MyStruct`. The `main` module imports the `my_module` module and uses it to call the `my_function` function and to create a `MyStruct` struct.

To run this program, you can save it as a file with the .rs extension and then compile it using the Rust compiler. For example, if you save the program as `my_program.rs`, you can compile it using the following command:

```
rustc my_program.rs
```

Once the program has been compiled, you can run it using the following command:

```
./my_program
```

This will print the following output:

```
This is the `my_function` function from the `my_module` module.
The coordinates of the `my_struct` struct are: (10, 20)
```

In Rust, modules are used to organize code into logical units, making it easier to manage and maintain larger codebases. The `mod` keyword is used to define modules in Rust. Here's an example of how to use modules in Rust:

```rust
// Define a module named 'my_module'
mod my_module {
    // Items within the module

    // Define a struct
    pub struct MyStruct {
        // Fields of the struct
        pub field1: i32,
        pub field2: String,
    }

    // Define a function
    pub fn my_function() {
        println!("Hello from my_function!");
    }
}

// Access items from the module
fn main() {
    // Create an instance of the struct
    let my_struct = my_module::MyStruct {
        field1: 10,
        field2: String::from("Hello"),
    };

    // Access the struct's fields
    println!("Field 1: {}", my_struct.field1);
    println!("Field 2: {}", my_struct.field2);

    // Call the function from the module
    my_module::my_function();
}
```

In this example, we define a module named `my_module` using the `mod` keyword. Inside the module, we can define various items such as structs, functions, enums, constants, etc. These items can be accessed using the module name followed by `::` notation.

The `pub` keyword is used to specify the visibility of items within the module. If an item is marked as `pub`, it can be accessed from outside the module. If no visibility modifier is specified, the item is private to the module and cannot be accessed from outside.

In the `main` function, we access the items from the `my_module` module. We create an instance of the `MyStruct` struct and access its fields. We also call the `my_function` function from the module.

Note that modules can be organized in a hierarchical manner, allowing for nested modules and sub-modules. This helps in creating a logical structure for organizing code.
