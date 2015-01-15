defmodule Dijkstra do
  @doc ~S"""
  Find the greatest common divisor

  ## Examples
  iex> Dijkstra.gcd(12, 8)
  4

  iex> Dijkstra.gcd(14, 21)
  7

  iex> Dijkstra.gcd(125, 46)
  1

  iex> Dijkstra.gcd(120, 36)
  12

  """

  def gcd(x, x) do
    x
  end

  def gcd(x, y) when x > y do
    gcd(x - y, y)
  end

  def gcd(x, y) do
    gcd(x, y - x)
  end
end
