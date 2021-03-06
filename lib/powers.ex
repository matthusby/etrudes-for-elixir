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

  def nth_root(x, n) do
    nth_root(x, n, x / 2.0)
  end

  def nth_root(x, n, a) do
    f = my_raise(a, n) - x
    fPrime = n * my_raise(a, n - 1)
    next = a - f / fPrime
    if(a - next > 0.000000001) do
      IO.puts "Current guess: #{next}"
      nth_root(x, n, next)
    else
      next
    end
  end
  def my_raise(x, 1) do
    x
  end

  def my_raise(_x, 0) do
    1
  end

  def my_raise(x, y) when y > 0 do
    my_raise(x, y, 1)
  end

  def my_raise(x, y) when y < 0 do
    1.0 / my_raise(x, abs(y), 1)
  end

  def my_raise(_x, 0, acc) do
    acc
  end

  def my_raise(x, y, acc) do
    my_raise(x, y - 1, x * acc)
  end
end
