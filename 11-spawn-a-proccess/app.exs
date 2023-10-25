pid = spawn(fn -> 1 + 2 end)
IO.inspect(pid)
IO.puts(Process.alive?(pid))

self()
IO.puts(Process.alive?(self()))
