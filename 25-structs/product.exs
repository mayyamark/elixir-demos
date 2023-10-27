defmodule Product do
  @enforce_keys [:name]
  defstruct [:name, price: 100]
end

# product = %Product{name: "Product"}
# table = %{product | name: "Table"}
