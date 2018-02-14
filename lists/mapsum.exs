defmodule MyList do
  def mapsum([], _func), do: 0

  def mapsum([head | tail], func) do
    func.(head) + mapsum(tail, func)
  end

  def max([x]), do: x
  def max([head | tail]), do: Kernel.max(head, max(tail))

  def caesar([], _n), do: []

  def caesar([head | tail], n)
      when head + n <= ?z,
      do: [head + n | caesar(tail, n)]

  def caesar([head | tail], n), do: [head + n - 26 | caesar(tail, n)]
end
