x = 2

try do
  1 / x
rescue
  ArithmeticError ->
    IO.inspect :infinity
else
  y when y < 1 and y > -1 ->
    IO.inspect :small
  _ ->
    IO.inspect :large
end
