# pipes
[1, 2, 3]
|> IO.inspect(label: "before")
|> Enum.map(&(&1 * 2))
|> IO.inspect(label: "after")
|> Enum.sum

# binding()
defmodule Math do
  def sum(a, b, c) do
    IO.inspect binding(), label: "binding"
    a + b + c
  end
end

Math.sum(1, 2, 3)
