s1 = Stream.cycle([1, 2, 3])
IO.inspect(Enum.take(s1, 10))

s2 = Stream.unfold("hełło", &String.next_codepoint/1)
IO.inspect(Enum.take(s2, 3))

s3 = File.stream!("../06-reduce-algorithm/math.exs")
%File.Stream{
  line_or_bytes: :line,
  modes: [:raw, :read_ahead, :binary],
  path: "../06-reduce-algorithm/math.exs",
  raw: true
}

IO.inspect(Enum.take(s3, 10))
