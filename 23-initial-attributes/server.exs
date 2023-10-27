defmodule MyServer do
  @initial_state %{host: "127.0.0.1", port: 3456}
  IO.inspect @initial_state

  @example 12

  def some_function, do: do_something_with(example())

  def another_function, do: do_something_else_with(example())

  defp example, do: @example

  defp do_something_with num do
    num + 1
  end

  defp do_something_else_with num do
    num + 2
  end
end

IO.puts MyServer.some_function
IO.puts MyServer.another_function
