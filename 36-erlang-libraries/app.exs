# binary module - :binary
IO.inspect String.to_charlist "Ø" # Unicode codepoints
IO.inspect :binary.bin_to_list "Ø" # raw data bites

# format text output - :io and :io_lib
IO.inspect :io.format("Pi is approximately given by:~10.3f~n", [:math.pi]) # formats to terminal output
IO. inspect to_string :io_lib.format("Pi is approximately given by:~10.3f~n", [:math.pi]) # formats to an iolist

# crypto module - :crypto
IO.inspect Base.encode16(:crypto.hash(:sha256, "Elixir"))

# digraph module - :digraph
digraph = :digraph.new()
coords = [{0.0, 0.0}, {1.0, 0.0}, {1.0, 1.0}]
[v0, v1, v2] = (for c <- coords, do: :digraph.add_vertex(digraph, c))
:digraph.add_edge(digraph, v0, v1)
:digraph.add_edge(digraph, v1, v2)
IO.inspect :digraph.get_short_path(digraph, v0, v2)

# # erlang term storage - :ets and :dets
# table = :ets.new(:ets_test, [])
#   # store as tuples with {name, population}
# :ets.insert(table, {"China", 1_374_000_000})
# :ets.insert(table, {"India", 1_284_000_000})
# :ets.insert(table, {"USA", 322_000_000})
# IO.inspect :ets.i(table)

# math module - :math
angle_45_deg = :math.pi() * 45.0 / 180.0
IO.inspect :math.sin(angle_45_deg)
IO.inspect :math.exp(55.0)
IO.inspect :math.log(7.694785265142018e23)

# queue module - :queue
q = :queue.new
q = :queue.in("A", q)
q = :queue.in("B", q)
{value, q} = :queue.out(q)
IO.inspect value
{value, q} = :queue.out(q)
IO.inspect value
{value, q} = :queue.out(q)
IO.inspect value

# rand module - :rand
IO.inspect :rand.uniform()
_ = :rand.seed(:exs1024, {123, 123534, 345345})
IO.inspect :rand.uniform()
IO.inspect :rand.uniform(6)

# zip module - :zip
:zip.foldl(fn _, _, _, acc -> acc + 1 end, 0, :binary.bin_to_list("file.zip"))

# zlib modules - :zlib
song = "
Mary had a little lamb,
His fleece was white as snow,
And everywhere that Mary went,
The lamb was sure to go."
compressed = :zlib.compress(song)
byte_size song
byte_size compressed
:zlib.uncompress(compressed)
