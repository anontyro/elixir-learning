defmodule StarterExercises.Application do
  use Application

  def start(_type, _args) do
    IO.puts "Hello world!"

    {:ok, self()}
  end
end
