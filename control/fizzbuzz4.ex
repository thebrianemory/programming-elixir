defmodule FizzBuzz do
  def fizzbuzz(n) when n > 0, do: Enum.each(1..n, &do_fizzbuzz/1)
  defp do_fizzbuzz(n) when rem(n, 15) == 0, do: IO.puts("FizzBuzz")
  defp do_fizzbuzz(n) when rem(n, 3) == 0, do: IO.puts("Fizz")
  defp do_fizzbuzz(n) when rem(n, 5) == 0, do: IO.puts("Buzz")
  defp do_fizzbuzz(n), do: IO.puts(n)
end
