defmodule Params do
  def func(p1, p2 \\ 123)

  def func(p1, p2) when is_list(p1) do
    "#{p2} is with a list"
  end

  def func(p1, p2) do
    "You pased in #{p1} and #{p2}"
  end
end
