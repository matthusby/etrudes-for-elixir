defmodule Geom do
  @doc ~S"""
  Some handy dandy math stuffs

  ## Examples
  iex> Geom.area 4, 3
  12

  iex> Geom.area 12, 7
  84

  """

  def area(x,y) do
    x * y
  end
end
