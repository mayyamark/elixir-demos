defprotocol Size do
  @doc "Calculates the size (and not the length!) of a data structure"
  def size(data)
end

defimpl Size, for: Any do
  def size(_), do: 0
end

defimpl Size, for: BitString do
  def size(string), do: byte_size(string)
end

defimpl Size, for: Map do
  def size(map), do: map_size(map)
end

defimpl Size, for: Tuple do
  def size(tuple), do: tuple_size(tuple)
end

defimpl Size, for: MapSet do
  def size(set), do: MapSet.size(set)
end

# define User struct
defmodule User do
  defstruct [:name, :age]
end

# implement Size for User struct
defimpl Size, for: User do
  def size(_user), do: 2
end

# use Size for Any
defmodule OtherUser do
  @derive [Size]
  defstruct [:name, :age]
end

IO.puts Size.size("foo") # string - 3
IO.puts Size.size(%{label: "some label"}) # map - 1
IO.puts Size.size({:ok, "hello"}) # tuple - 2
# IO.puts Size.size(%User{name: "John", age: 27}) # User - 2
# IO.puts Size.size(%OtherUser{name: "John", age: 27}) # OtherUser - 2
