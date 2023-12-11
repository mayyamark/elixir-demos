denominator = 2
IO.inspect quote do: divide(42, denominator)
IO.inspect quote do: divide(42, unquote(denominator))
