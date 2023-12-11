defmodule MacroHygiene do
  defmacro hygienic do
    quote do: val = -1
  end
end

defmodule App do
  require MacroHygiene

  val = 42
  IO.inspect val                    # 42
  IO.inspect MacroHygiene.hygienic  # -1
  IO.inspect val                    # 42
end
