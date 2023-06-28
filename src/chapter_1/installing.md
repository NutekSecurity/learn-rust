# Installing Rust, Neovim (nvim command) and tmux

## Installing Rust

To install Rust on you Mac follow this procedure:

1. Visit official Rust installation [webpage](https://www.rust-lang.org/tools/install)
2. Use

	```shell
	curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
	```

	command in your Terminal window (`cmd`+`spacebar` and type `Terminal.app` then copy and paste it (`cmd`+`c` and `cmd`+`v`), confirm with `Enter ↩` and follow on-screen instructions.

Rust is a multi-paradigm, general-purpose programming language that emphasizes performance, safety, and concurrency. It enforces memory safety--ensuring that all references point to valid memory--without requiring the use of a garbage collector or reference counting present in other memory-safe languages. To simultaneously enforce memory safety and prevent concurrent data races, its "borrow checker" tracks the object lifetime of all references in a program during compilation.

Rust's syntax is similar to that of C and C++, although many of its features are more influenced by functional programming languages. It aims to support concurrent systems programming, which has inspired a feature set emphasizing safety, control of memory layout, and concurrency. Safety in Rust includes the guarantees of memory safety, type safety, and lack of data races.

Rust is a relatively new language, but it has been growing in popularity in recent years. It is used in a variety of applications, including operating systems, web servers, and embedded systems.

Here are some of the benefits of using Rust:

- **Performance:** Rust is a very fast language, and it can be used to create high-performance applications.
- **Safety:** Rust is a memory-safe language, which means that it is very difficult to create memory errors.
- **Concurrency:** Rust is a very good language for concurrent programming, and it can be used to create highly concurrent applications.
- **Expressiveness:** Rust is a very expressive language, and it allows you to write code that is both clear and concise.

If you are looking for a high-performance, safe, and concurrent programming language, then Rust is a good choice.

## Install Neovim

Using Homebrew

1. Utilising the same Terminal window type
	
	```
	brew install neovim
	```

2. You can start it with `nvim` command, but don't do this now (in case, you don't know how to exit, press `esc`, and `:q!`

Neovim is a free and open-source text editor based on Vim. It is a highly customizable and extensible editor that can be used for a variety of tasks, including programming, writing, and editing text.

Neovim is a fork of Vim, which was created in 1991. Vim is a very powerful text editor, but it can be difficult to learn and use. Neovim aims to improve on Vim by making it more modern and user-friendly.

Some of the features of Neovim include:

- A built-in terminal emulator
- A Lua plugin API
- A modern syntax highlighting engine
- A built-in debugger
- A built-in file manager

Neovim is a great choice for users who are looking for a powerful and customizable text editor. It is also a good choice for users who are familiar with Vim and want to try a more modern version of the editor.

Here are some of the benefits of using Neovim:

- **Extensibility:** Neovim is highly extensible, and it can be customized to meet your specific needs.
- **Performance:** Neovim is a very fast editor, and it can be used to edit large files without any problems.
- **Customization:** Neovim can be customized to look and feel the way you want it to.
- **Community:** There is a large and active community of Neovim users, and there are many plugins and resources available.

If you are looking for a powerful and customizable text editor, then Neovim is a good choice.

## Install tmux:

1. With steps the same as above:

	```
	brew install tmux
	```

2. Skip tmux if you're using Warp, but use with **Kitty**, **Alacritty** or **Terminal**

Tmux is a terminal multiplexer, which means that it allows you to run multiple terminal sessions in a single window. This can be useful for a variety of tasks, such as:

- Running multiple applications at the same time
- Splitting your terminal into multiple panes
- Detaching and attaching sessions
- Sharing sessions with others

Tmux is a powerful tool that can be used to improve your productivity. It is especially useful for users who work on remote servers or who need to run multiple applications at the same time.

Here are some of the benefits of using tmux:

- **Productivity:** Tmux can help you to be more productive by allowing you to run multiple applications at the same time and by keeping your sessions organized.
- **Portability:** Tmux sessions can be saved and restored, so you can take your work with you wherever you go.
- **Extensibility:** Tmux is highly extensible, and there are many plugins available that can add new features and functionality.

If you are looking for a way to improve your productivity and to make your terminal more powerful, then tmux is a good choice.

Here are some of the basic commands that you can use to interact with tmux:

- `tmux`: Start a new tmux session.
- `tmux attach`: Attach to an existing tmux session.
- `tmux new-window`: Create a new window in the current session.
- `tmux split-window`: Split the current window horizontally or vertically.
- `tmux select-pane`: Select a pane in the current window.
- `tmux kill-session`: Kill the current tmux session.
- `Ctrl + b` then `%` to split vertically
- `Ctrl + b` then `"` to split horizontally
- `Ctrl + b` then `o` to cycle through panes
- `Ctrl + b` then `q` to show pane numbers
- `Ctrl + b` then `x` to kill the current pane
- `Ctrl + b` then `z` to toggle zoom on the current pane
- `Ctrl + b` then `Arrow Key` to move the current pane
