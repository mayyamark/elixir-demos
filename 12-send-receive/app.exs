send(self(), {:hello, "world"})

receive do
  {:hello, msg} -> IO.puts(msg)
  {:world, _msg} -> IO.puts("won't match")
end
