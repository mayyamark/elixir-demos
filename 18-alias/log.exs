defmodule Mayya.Custom.Logger do
  def log(msg) do
    IO.puts(msg)
  end
end

# alias Mayya.Custom.Logger
alias Mayya.Custom.Logger, as: Logger
Logger.log("Renamed the module!")
