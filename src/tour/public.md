# Public

In Rust, the `pub` keyword is used to control the visibility or accessibility of items such as variables, functions, structs, and modules. It specifies whether an item can be accessed from outside its current scope.

Here's a breakdown of how `pub` is used with different items in Rust:

1. Public Variables:

    If you want a variable to be accessible from outside its current module, you can declare it as `pub`.
    Example: `pub const MAX_VALUE: u32 = 100;`

2. Public Functions:

    If you want a function to be callable from outside its current module, you can declare it as `pub`.
    Example: `pub fn add(a: i32, b: i32) -> i32 { a + b }`

3. Public Structs:

    If you want a struct to be usable from outside its current module, you can declare it as `pub`.
    Example: `pub struct Point { x: i32, y: i32 }`

4. Public Modules:

    If you want a module to be accessible from outside its parent module or crate, you can declare it as `pub`.
    Example: `pub mod math { ... }`

On the other hand, if an item (variable, function, struct, or module) is not explicitly marked as `pub`, it is considered to be private or local to its current module. Private items can only be accessed within their current module or by items that have visibility within that module.

It's important to note that Rust has a strong emphasis on privacy and encourages encapsulation by default. By default, items are private unless explicitly marked as `pub`lic using the `pub` keyword. This helps promote good software design and maintainability by limiting the visibility of implementation details.

In summary, `pub` is used to control the visibility of items in Rust, allowing you to specify which items can be accessed from outside their current scope. Private items are the default in Rust, and only items marked as `pub` can be accessed from outside their current module or crate.

In Rust, the `pub` keyword is used to make an item public. This means that the item can be accessed from outside of its current scope. Local variables, functions, structs, and modules can all be made public.

Local variables are variables that are declared within a function or block. They are only visible within the scope of the function or block in which they are declared.

Functions are blocks of code that can be called from other parts of the program. They can take in arguments and return values. Functions can be made public by declaring them with the `pub` keyword.

Structs are data structures that can be used to store data. They can have fields, which are variables that are associated with the struct. Structs can be made public by declaring them with the `pub` keyword.

Modules are a way of organizing code in Rust. They can contain functions, structs, and other modules. Modules can be made public by declaring them with the `pub` keyword.

Here are some examples of how the `pub` keyword can be used:

```rust
pub fn public_function() {
  // This function is public and can be called from anywhere.
}

pub struct PublicStruct {
  // This struct is public and can be accessed from anywhere.
}

pub mod public_module {
  // This module is public and can be accessed from anywhere.
}

fn main() {
  // This function is private and cannot be called from anywhere.
}

struct PrivateStruct {
  // This struct is private and cannot be accessed from anywhere.
}

mod private_module {
  // This module is private and cannot be accessed from anywhere.
}
```

The `pub` keyword is a powerful tool that can be used to control the visibility of items in Rust. It can be used to make code more reusable and easier to understand.
