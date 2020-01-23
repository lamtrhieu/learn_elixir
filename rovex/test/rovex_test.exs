defmodule RovexTest do
  use ExUnit.Case
  doctest Rovex

  test "greets the world" do
    assert Rovex.hello() == :world
  end
end
