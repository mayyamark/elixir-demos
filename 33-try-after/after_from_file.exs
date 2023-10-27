{:ok, file} = File.open("sample", [:utf8, :write])

try do
  IO.write(file, "olá")
  raise "oops, something went wrong"
after
  File.close(file)
end
