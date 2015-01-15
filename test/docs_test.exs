defmodule DocsTest do
  use ExUnit.Case, async: true
  doctest Geom
  doctest Dijkstra
end
