defmodule DoublePuts do
  defmacro double_puts(expr) do
    quote bind_quoted: [expr: expr] do
      IO.puts(expr)
      IO.puts(expr)
    end
  end
end

defmodule App do
  require DoublePuts
  DoublePuts.double_puts(:os.system_time)
end
