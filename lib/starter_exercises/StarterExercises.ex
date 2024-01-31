defmodule StarterExercises.Application do
  use Application

  @input_message """
  Which application would you like to run:
  1. Hello World
  2. Counting Characters
  3. Printing Quotes
  4. Mad Libs
  0. Quit

  """
  def user_application() do
    IO.puts("-----------------------------------")

    user_value =
      IO.gets(@input_message)
      |> String.trim()
      |> String.to_integer()

    if(user_value == 0) do
      user_application(-1)
    else
      user_application(user_value)
    end
  end

  def user_application(n) when n != -1 and n <= 4 do
    cond do
      n == 1 ->
        HelloWorld.start()

      n == 2 ->
        CountingCharacters.start()

      n == 3 ->
        PrindingQutoes.start()

      n == 4 ->
        MadLibs.start()
    end

    user_application()
  end

  def user_application(n) when n < 0 or n > 4 do
    IO.puts("Goodbye!")
  end

  def start(_type, _args) do
    user_application()

    {:ok, self()}
  end
end
