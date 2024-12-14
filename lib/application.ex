defmodule Aoc2024.Application do
  use Application

  @impl true
  def start(_type, _args) do
    #day = IO.gets("Day (1-24): ") |> String.trim()
    #day = :"Elixir.Aoc2024.Day#{day}"

    #IO.puts("")
    #IO.puts("Task 1: #{day.task1()}")
    #IO.puts("Task 2: #{day.task2()}")

    Aoc2024.Day1.task2()

    Supervisor.start_link([], strategy: :one_for_one)
  end
end
