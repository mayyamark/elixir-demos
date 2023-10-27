# generators
list = for n <- [1, 2, 3, 4], do: n * n
IO.inspect(list)

values = [good: 1, good: 2, bad: 3, good: 4]
squared_goods = for {:good, n} <- values, do: n * n
IO.inspect(squared_goods)

# filters
squared_odds = for n <- 1..10, rem(n, 2) == 0, do: n * n
IO.inspect(squared_odds)

# multiple generators
keyword_list = for i <- [:a, :b, :c], j <- [1, 2], do:  {i, j}
IO.inspect(keyword_list)

# bitstring generator
pixels = <<213, 45, 132, 64, 76, 32, 76, 0, 0, 234, 32, 15>>
rgb_tuple = for <<r::8, g::8, b::8 <- pixels>>, do: {r, g, b}
IO.inspect(rgb_tuple)

# :into option
trimmed = for <<c <- " hello world ">>, c != ?\s, into: "", do: <<c>>
IO.puts(trimmed)

squared_map_values = for {key, val} <- %{"a" => 1, "b" => 2}, into: %{}, do: {key, val * val}
IO.inspect(squared_map_values)
