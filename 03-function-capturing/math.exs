defmodule Math do
  def sum(a, b) do
    do_sum(a, b)
  end

  defp do_sum(a, b) do
    a + b
  end

  def zero?(0) do
    true
  end

  def zero?(x) when is_integer(x) do
    false
  end
end

zero_captured = &Math.zero?/1
IO.puts zero_captured.(0)
IO.puts zero_captured.(1)

add = &+/2
IO.puts add.(1, 2)

add_one = &(&1 + 1)
IO.puts add_one.(5)

greeting = &"Good #{&1}"
IO.puts greeting.("morning")
