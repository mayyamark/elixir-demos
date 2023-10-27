spawn_link(fn -> exit(1) end)

# rear
try do
  exit("I am exiting")
catch
  :exit, _ -> "not really"
end
