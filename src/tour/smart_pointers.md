# Intelligent pointers

In Rust, smart pointers, also known as intelligent pointers, are types that provide additional functionality and capabilities beyond regular references. They enable more fine-grained control over memory allocation, deallocation, and ownership. The two main smart pointer types in Rust are `Box<T>` and `Rc<T>`. Here are examples of their usage:

1. Box<T>: Box is a smart pointer that allows allocating values on the heap rather than the stack. It provides ownership and automatically deallocates the memory when it goes out of scope.

```rust
fn main() {
    let value = Box::new(5); // Allocate an integer on the heap

    println!("Value: {}", value); // Dereference the Box to access the value
}
```

In this example, we create a Box that holds an integer value of `5`. The `Box::new()` function allocates memory on the heap and returns a Box that owns the value. We can then dereference the Box using the `*` operator to access the value.

2. Rc<T>: Rc (Reference Counted) is a smart pointer that allows multiple ownership of a value. It keeps track of the number of references and automatically deallocates the value when the last reference goes out of scope.

```rust
use std::rc::Rc;

fn main() {
    let value = Rc::new(5); // Create an Rc with initial reference count of 1

    let cloned_value1 = Rc::clone(&value); // Create a new reference to the value
    let cloned_value2 = Rc::clone(&value);

    println!("Reference count: {}", Rc::strong_count(&value)); // Print the reference count
}
```

In this example, we create an Rc that holds an integer value of `5`. The `Rc::new()` function creates the Rc with an initial reference count of 1. We can clone the Rc using the `Rc::clone()` method to create additional references. The `Rc::strong_count()` function allows us to retrieve the current reference count.

Smart pointers like Box and Rc provide additional memory management capabilities in Rust. They are particularly useful when dealing with dynamic-sized values or scenarios where multiple ownership or reference counting is required. By using smart pointers, you can ensure memory safety and achieve more flexible and efficient memory management in your Rust programs.

Here are some examples of how to use smart pointers in Rust:

- **Box<T>:** The `Box<T>` smart pointer is used to allocate data on the heap. This can be useful for when you need to store large amounts of data or when you need to store data that will outlive the current scope. For example, the following code defines a `Box<i32>` smart pointer that stores the value 100:

	```rust 
	let x = Box::new(100);
	 ```

- **Rc<T>:** The `Rc<T>` smart pointer is used to count the number of references to a value. This can be useful for when you need to share data between multiple parts of your code. For example, the following code defines a `Rc<String>` smart pointer that stores the string "Hello, world!". The `Rc<String>` smart pointer will keep track of the number of references to the string, and it will automatically deallocate the string when there are no more references to it.

	```rust
	let s = Rc::new("Hello, world!");
	```

- **RefCell<T>:** The `RefCell<T>` smart pointer is used to borrow data from a smart pointer. This can be useful for when you need to modify data that is stored in a smart pointer. For example, the following code defines a `RefCell<String>` smart pointer that stores the string "Hello, world!". The `RefCell<String>` smart pointer allows you to borrow the string and modify it.

	```rust
	let s = RefCell::new("Hello, world!");
	  
	let mut borrowed_string = s.borrow_mut();
	borrowed_string.push_str("!");
	```
