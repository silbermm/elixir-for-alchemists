defmodule IntroToElixirTest do
  use ExUnit.Case
  doctest IntroToElixir

  test "greets the world" do
    assert IntroToElixir.product_of_numbers([2, 2, 3]) == 12
  end
end
