defmodule ElixirForAlchemistsTest do
  use ExUnit.Case
  doctest ElixirForAlchemists

  test "greets the world" do
    assert ElixirForAlchemists.product_of_numbers([2,2,3]) == 12
  end
end
