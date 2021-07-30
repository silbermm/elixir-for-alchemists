defmodule IntroToElixir do
  @moduledoc """
  Documentation for this module
  """

  require IEx

  @doc """
  Product of a list of numbers

  ## Examples

      iex> IntroToElixir.product_of_numbers([1,10,20])
      200

  """
  @spec product_of_numbers(list(number())) :: number()
  def product_of_numbers(list_of_numbers) do
    Enum.reduce(list_of_numbers, &Kernel.+/2)
  end

  @doc """
  Demonstrates the use of `IntroToElixir.product_of_numbers/1`
  """
  @spec use_fn() :: number()
  def use_fn do
    product_of_numbers([1, 2, "3"])
  end

  @doc """
  Built to show how `break!/1` works
  """
  def test_breaks(one, two) do
    three = one + two
    four = three + 1
    [one, two, three, four]
  end
end
