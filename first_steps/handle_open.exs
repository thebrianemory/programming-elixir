handle_open = fn
  {:ok, file} -> "First lineL #{IO.read(file, :line)}"
  {_, error} -> "ErrorL #{:file.format_error(error)}"
end

IO.puts(handle_open.(File.open("Rakefile")))
IO.puts(handle_open.(File.open("none")))
