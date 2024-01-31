defmodule StarterExercises.Application do
  use Application

  def user_application() do
    IO.puts("-----------------------------------")
    user_value = IO.gets("Which application would you like to run \n 1. Hello World \n 2. Counting Characters \n 0. Quit \n") |> String.trim() |> String.to_integer()

    if(user_value == 0) do
      user_application(-1)
    else
      user_application(user_value)
    end
  end

  def user_application(n) when n != -1 and n <=2 do
    if(n == 1) do
      HelloWorld.start()
    else
      CountingCharacters.start()
    end
    user_application()
  end

  def user_application(-1) do
    IO.puts("Goodbye!")
  end

  def start(_type, _args) do
    user_application()

    {:ok, self()}
  end
end
