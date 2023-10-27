foo_bar_regex = ~r/foo|bar/
IO.inspect "foo" =~ foo_bar_regex
IO.inspect "bat" =~ foo_bar_regex

case_sensitive_regex = ~r/hello/
case_insensitive_regex = ~r/hello/i
IO.inspect "HELLO" =~ case_sensitive_regex
IO.inspect "HELLO" =~ case_insensitive_regex

string_sigil = ~s(this is a string with "double" quotes, not 'single' ones)
IO.inspect string_sigil
IO.inspect is_bitstring(string_sigil)

char_list_sigil = ~c"cat"
IO.inspect char_list_sigil
IO.inspect is_list(char_list_sigil)

word_list_sigil = ~w(a b c)
IO.inspect word_list_sigil
IO.inspect is_list(word_list_sigil)
IO.inspect is_bitstring(Enum.at(word_list_sigil, 1))

word_list_sigil_a_modifier = ~w(a b c)a
IO.inspect word_list_sigil_a_modifier

word_list_sigil_c_modifier = ~w(a b c)c
IO.inspect word_list_sigil_c_modifier

word_list_sigil_s_modifier = ~w(a b c)s
IO.inspect word_list_sigil_s_modifier

sigil_with_escape_codes = ~s(String with escape codes \x26 #{"inter" <> "polation"})
IO.inspect sigil_with_escape_codes

sigil_without_escape_codes = ~S(String without escape codes \x26 without #{interpolation})
IO.inspect sigil_without_escape_codes

date_sigil = ~D[1997-05-20]
# %Date{year: year, month: month, day: day} = date_sigil
IO.inspect date_sigil.year

time_sigil = ~T[18:30:01.2]
# %Time{hour: hour, minute: minute, second: second, microsecond: microsecond, calendar: calendar} = time_sigil
IO.inspect time_sigil.minute

naive_date_time_sigil = ~N[2019-10-31 23:00:07]
# %NaiveDateTime{year: year, month: month, day: day, hour: hour, minute: minute, second: second, microsecond: microsecond, calendar: calendar} = naive_date_time_sigil
IO.inspect naive_date_time_sigil.calendar

utc_date_time = ~U[2019-10-31 19:59:03Z]
# %DateTime{minute: minute, time_zone: time_zone} = utc_date_time
IO.inspect utc_date_time.time_zone
