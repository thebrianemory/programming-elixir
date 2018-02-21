defmodule Capitalize do
  def capitalize_sentences(string) do
    string
    |> String.trim_trailing(".")
    |> String.split(". ", trim: true)
    |> Enum.map(&(&1 <> "."))
    |> Enum.map(&String.capitalize/1)
    |> Enum.join(" ")
  end
end
