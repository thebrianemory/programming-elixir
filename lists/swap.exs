defmodule Swapper do
  def swap([]), do: []
  def swap([a, b | tail]), do: [b, a | swap(tail)]

  def swap(list),
    do:
      raise(
        "Can't swap a list with an odd number of elements. You passed in a list with #{
          Kernel.length(list)
        } elements"
      )
end
