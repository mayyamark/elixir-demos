defmodule IntSigil do
  def sigil_i(string, []), do: String.to_integer(string)
  def sigil_i(string, [?n]), do: -String.to_integer(string)
end

# in iex mode
# import IntSigil
# ~i(42)
# ~i(42)n
