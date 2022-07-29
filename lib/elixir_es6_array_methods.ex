defmodule ArrayMethods do
  @moduledoc """
  Examples of how to implement EcmaScript 6 array methods in Elixir
  """

  def is_even(num) do
    rem(num, 2) == 0
  end

  def map(array) do
    # double numbers
    Enum.map(array, fn x -> x * 2 end)
  end

  def filter(array) do
    # keep only evens
    array |> Enum.filter(&is_even/1)
    # Enum.filter(array, fn x -> x % 2 == 0 end)
  end

  def find(array) do
    # find even
    Enum.find(array, fn x -> rem(x, 2) == 0 end)
  end

  def findIndex(array) do
    # find first even number
    Enum.find_index(array, fn x -> rem(x, 2) == 0 end)
  end

  def some(array) do
    # find if any of the numbers are even
    Enum.any?(array, fn x -> rem(x, 2) == 0 end)
  end

  def every(array) do
    # find if all numbers are even
    Enum.all?(array, fn x -> rem(x, 2) == 0 end)
  end

  def reduce(array) do
    # get sum of all numbers
    Enum.sum(array)
  end
end

res = ArrayMethods.map([1,2,3,4,5,6])
res2 = ArrayMethods.filter([1,2,3,4,5,6])
res3 = ArrayMethods.find([1,2,3,4,5,6])
res4 = ArrayMethods.findIndex([1,2,3,4,5,6])
res5 = ArrayMethods.some([1,2,3,4,5,6])
res6 = ArrayMethods.every([1,2,3,4,5,6])
res7 = ArrayMethods.reduce([1,2,3,4,5,6])

IO.puts "Map: #{inspect(res)}"
IO.puts "Filter: #{inspect(res2)}"
IO.puts "Find: #{inspect(res3)}"
IO.puts "FindIndex: #{inspect(res4)}"
IO.puts "Some: #{inspect(res5)}"
IO.puts "Every: #{inspect(res6)}"
IO.puts "Reduce: #{inspect(res7)}"
