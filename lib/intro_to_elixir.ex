defmodule IntroToElixir do
  @moduledoc """
  Documentation for this module
  """

  require IEx

  @doc """
  Product of a list of numbers

  ## Examples

      iex> IntroToElixir.product_of_numbers([1,2,3])
      6

  """
  @spec product_of_numbers(list(number())) :: number()
  def product_of_numbers(list_of_numbers) do
    Enum.reduce(list_of_numbers, &Kernel.+/2)
  end

  @spec use_fn() :: number()
  def use_fn do
    product_of_numbers([1, 2, "3"])
  end

  def test_breaks(one, two) do
    three = one + two
    four = three + 1
    [one, two, three, four]
  end
end
