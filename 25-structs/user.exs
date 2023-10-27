defmodule User do
  defstruct name: "John", age: 27
end

# in iex mode:
# user = %User{}
# ivan = %User{user | name: "Ivan"}
# mayya = %User{name: "Mayya", age: 26}
# {mayya | :err} # error!
# is_map(mayya)
# mayya.__struct__
