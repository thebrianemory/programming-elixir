content = "Now is the time"

lp =
  with {:ok, file} = File.open("/etc/password"),
       content = IO.read(file, :all),
       :ok = File.close(file),
       [_, uid, gid] = Regex.run(~r/_lp:.*?:(\d+):(\d+)/, content) do
    "Group: #{gid}, User: #{uid}"
  end

IO.puts(lp)
IO.puts(conent)
