defmodule DoublePuts do
  defmacro double_puts(expr) do
    quote do
      IO.puts(unquote(expr))
      IO.puts(unquote(expr))
    end
  end
end

defmodule App do
  require DoublePuts
  DoublePuts.double_puts(:os.system_time)
end
