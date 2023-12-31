IO.puts(Enum.reduce([1, 2, 3], 0, fn(x, acc) -> x + acc end))
IO.puts(Enum.reduce([1, 2, 3], 0, &+/2))

IO.inspect(Enum.map([1, 2, 3], fn(x) -> x * 2 end))
IO.inspect(Enum.map([1, 2, 3], &(&1 * 2)))

odd? = &(rem(&1, 2) != 0)
IO.inspect(Enum.filter(1..10, odd?))
