send(self(), {:hello, "world"})

receive do
  {:mayya, msg} -> IO.puts(msg)
after
  1_000 -> IO.puts("nothing after 1s")
end
