# REPL
REPL enviroment to play with Elixir & Erlang, Mix project.

```
# Erlang
erl

# Elixir
iex

# With Mix project loaded
iex -S mix

# With Phoenix server started
iex -S mix phx.server
```

# Debugging

## IO.inspect
Simply prints out given data
```
IO.inspect(some_data, label: "A label")
```

## IEx.pry
or halt a execution and jump in to interact with the debugged code:

```
require IEx
IEx.pry
```

Source: https://elixir-lang.org/getting-started/debugging.html

## `observer` GUI tool
In `iex` session, you can invoke `:observer.start` to start the GUI tool for observing the Erlang system. There you can see the stats of the system, the supervision tree, processes information, etc,.

# Code formatting

Some text editors or IDEs have plugins to support this. If you want to format the code manually via terminal, you can run:

```
mix format
```
