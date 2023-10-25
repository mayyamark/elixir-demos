odd? = &(rem(&1, 2) != 0)

IO.puts(1..100_000 |> Enum.map(&(&1 * 3)) |> Enum.filter(odd?) |> Enum.sum())
