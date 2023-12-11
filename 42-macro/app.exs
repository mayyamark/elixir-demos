defmodule OurMacro do
  defmacro unless(expr, do: block) do
    quote do
      if !unquote(expr), do: unquote(block)
    end
  end
end

defmodule App do
  require OurMacro

  IO.inspect OurMacro.unless true, do: "Hi"  # nil
  IO.inspect OurMacro.unless false, do: "Hi" # Hi

  quoted =
    quote do
      OurMacro.unless(true, do: "Hi")
    end

  quoted |> Macro.expand_once(__ENV__) |> Macro.to_string |> IO.puts
  quoted |> Macro.expand(__ENV__) |> Macro.to_string |> IO.puts      # "if" is also a macro
end
