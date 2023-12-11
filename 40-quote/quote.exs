# return themselves when quoted
IO.inspect quote do: 42                                   # 42
IO.inspect quote do: "Hello"                              # Hello
IO.inspect quote do: :world                               # :world
IO.inspect quote do: [1, 2]                               # [1, 2]
IO.inspect quote do: {"hello", :world}                    # {"hello", :world}

# return tuple, containing func name, metadata and func args when quoted
IO.inspect quote do: {"hello", :world, "hello"}           # {:{}, [], ["hello", :world, "hello"]}
IO.inspect quote do: 1 + 2                                # {:+, [context: Elixir, imports: [{1, Kernel}, {2, Kernel}]], [1, 2]}
IO.inspect quote do: if value, do: "True", else: "False"  # {:if, [context: Elixir, imports: [{2, Kernel}]], [{:value, [], Elixir}, [do: "True", else: "False"]]}
