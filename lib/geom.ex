defmodule Geom do
  @doc ~S"""
  Some handy dandy math stuffs

  ## Examples
  iex> Geom.area(:rectangle, 3, 4)
  12

  iex> Geom.area(:triangle, 3, 5)
  7.5

  iex> Geom.area(:ellipse, 2, 4)
  25.132741228718345

  iex> Geom.area(:rectangle, -3, 4)
  ** (FunctionClauseError) no function clause matching in Geom.area/3

  """

  def area(:rectangle, x, y) when x >= 0 and y >= 0 do
    x * y
  end

  def area(:triangle, x, y) when x >= 0 and y >= 0 do
    ( x * y ) / 2
  end

  def area(:ellipse, x, y) when x >= 0 and y >= 0 do
    :math.pi * x * y
  end

end
