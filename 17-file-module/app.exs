{:ok, file} = File.open("./hello.txt", [:write])

IO.binwrite(file, "Hello")

File.close(file)

IO.inspect(File.read("./hello.txt")) # returns a tuple, use this when you want to handle errors
IO.inspect(File.read!("./hello.txt")) # returns the content, use this when you don't want to handle errors

case File.read("./world.txt") do
  {:ok, body} -> IO.inspect(File.read!("./hello.txt"))
  {:error, reason} -> IO.puts(reason)
end
