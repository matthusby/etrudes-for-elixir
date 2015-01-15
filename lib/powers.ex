defmodule Powers do
  @doc ~S"""

  ## Examples
  iex> Powers.my_raise(5, 1)
  5

  iex> Powers.my_raise(2, 3)
  8

  iex> Powers.my_raise(1.2, 3)
  1.728

  iex> Powers.my_raise(2, 0)
  1

  iex> Powers.my_raise(2, -3)
  0.125
  """

  def my_raise(_x, 0) do
    1
  end

  def my_raise(x, 1) do
    x
  end

  def my_raise(x, y) when y > 1 do
    x * my_raise(x, y - 1)
  end

  def my_raise(x, y) do
    1.0 / my_raise(x, abs(y))
  end
end
