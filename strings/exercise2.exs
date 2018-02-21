defmodule Anagram do
  def anagram?(word1, word2) do
    new_word1 = sort_letters(word1)
    new_word2 = sort_letters(word2)
    new_word1 == new_word2
  end

  defp sort_letters(word) do
    word
    |> String.split("", trim: true)
    |> Enum.sort()
  end
end
