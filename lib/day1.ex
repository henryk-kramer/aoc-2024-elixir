defmodule Aoc2024.Day1 do
  def task1() do
    {first, second} = cleaned_lists()

    Enum.zip(first, second)
    |> Enum.map(fn {a, b} -> abs(b - a) end)
    |> Enum.sum()
    |> IO.inspect()
  end

  def task2() do
    {first, second} = cleaned_lists()

    second = Enum.frequencies(second)

    first
    |> Enum.map(fn a -> a * Map.get(second, a, 0) end)
    |> Enum.sum()
    |> IO.inspect()
  end

  defp cleaned_lists() do
    {first, second} =
      File.stream!("resources/day1/input.prod")
      |> Enum.map(&String.split/1)
      |> Enum.map(&List.to_tuple/1)
      |> Enum.unzip()

    first =
      first
      |> Enum.map(&String.to_integer/1)
      |> Enum.sort()

    second =
      second
      |> Enum.map(&String.to_integer/1)
      |> Enum.sort()

    {first, second}
  end
end
