defmodule Geom do
  @doc ~S"""
  Some handy dandy math stuffs

  ## Examples
  iex> Geom.area({:rectangle, 3, 4})
  12

  iex> Geom.area({:triangle, 3, 5})
  7.5

  iex> Geom.area({:ellipse, 2, 4})
  25.132741228718345

  iex> Geom.area({:rectangle, -3, 4})
  0

  iex> Geom.area({:matt, 2, 4})
  0

  """

  def area({shape, x, y}) do
    area(shape, x, y)
  end

  defp area(shape, x, y) when x >= 0 and y >= 0 do
    case shape do
      :rectangle -> x * y
      :triangle -> ( x * y ) / 2
      :ellipse -> :math.pi * x * y
      _ -> 0
    end
  end

  defp area(_, _, _) do
    0
  end
end
