defmodule FizzBuzz do
  def fizzbuzz(n) when n > 0, do: Enum.each(1..n, &_fizzbuzz/1)
  defp _fizzbuzz(n) when rem(n, 15) == 0, do: IO.puts("FizzBuzz")
  defp _fizzbuzz(n) when rem(n, 3) == 0, do: IO.puts("Fizz")
  defp _fizzbuzz(n) when rem(n, 5) == 0, do: IO.puts("Buzz")
  defp _fizzbuzz(n), do: IO.puts(n)
end
