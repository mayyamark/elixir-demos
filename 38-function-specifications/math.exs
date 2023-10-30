defmodule Math do
  @spec diff(number, number) :: number
  def diff(a, b) do
    a - b
  end

  @spec sum([number()]) :: number()
  def sum(list) do
    Enum.reduce(list, 0, fn(x, acc) -> x + acc end)
  end
end

IO.inspect(Math.diff(3, 12))
IO.inspect(Math.sum([1, 2, 3]))
