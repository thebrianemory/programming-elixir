defmodule Chop do
  def guess(actual, range) do
    first..last = range
    guess = split(first, last)

    IO.puts("Is it #{guess}?")
    is_correct(guess, actual, first, last)
  end

  def split(first, last) do
    (first + last) |> div(2)
  end

  def is_correct(guess, actual, _, _) when guess == actual, do: guess

  def is_correct(guess, actual, first, _) when guess > actual do
    guess(actual, first..(guess - 1))
  end

  def is_correct(guess, actual, _, last) when guess < actual do
    guess(actual, (guess + 1)..last)
  end
end
