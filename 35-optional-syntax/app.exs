# parentheses are optional
IO.inspect length([1, 2, 3]) == length [1, 2, 3]

# do-end blocks are equivalent to keyword lists
if true do
  IO.inspect :this
else
  IO.inspect :that
end

if true, do: IO.inspect(:this), else: IO.inspect(:that)

# step by step

# initial code that is same as 1), 2), 3) and 4)
if variable? do
  IO.inspect :this
else
  IO.inspect :that
end

# 1) do-end blocks are equivalent to keywords
if variable?, do: IO.inspect(:this), else: IO.inspect(:that)
# 2) keyword lists as last argument do not require square brackets, but let’s add them:
if variable?, [do: IO.inspect(:this), else: IO.inspect(:that)]
# 3) keyword lists are the same as lists of two-element tuples:
if variable?, [{:do, IO.inspect(:this)}, {:else, IO.inspect(:that)}]
# 4) finally, parentheses are optional on function calls, but let’s add them:
if(variable?, [{:do, IO.inspect(:this)}, {:else, IO.inspect(:that)}])


# module
defmodule Math do
  def add(a, b) do
    a + b
  end
end

# same as
defmodule(Math, [
  {:do, def(add(a, b), [{:do, a + b}])}
])
