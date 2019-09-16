defmodule ElixirForAlchemists do
  @moduledoc """
  Documentation for ElixirForAlchemists.
  """

  require IEx;


  @doc """
  Product of a list of numbers

  ## Examples

      iex> ElixirForAlchemists.product_of_numbers([1,2,3])
      6

  """
  @spec product_of_numbers(list(number())) :: number()
  def product_of_numbers(list_of_numbers) do
    Enum.reduce(list_of_numbers, &Kernel.+/2)
  end

  def map_reduce(list_of_maps) do
    list_of_maps
    |> Enum.map(fn %{age: age} -> age end)
    |> Enum.reduce(&Kernel.+/2)
  end

  @spec use_fn() :: number()
  def use_fn do
    product_of_numbers([1, 2, "3"])
  end
end

