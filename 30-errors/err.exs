# raise/1
raise "oops"

# raise/2
raise ArgumentError, message: "invalid argument foo"

# custom error
defmodule MyError do
  defexception message: "default message"
end

raise MyError

# rescue with try/rescue
try do
  raise "oops"
rescue
  e in RuntimeError -> e
end
