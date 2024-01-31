# EXERCISE 2
# Program that accepts a string and counts how long it is
#
# example:
# What is the input string? Homer
# Homer has 5 characters
#
# Additional
# - if empty string prompt and allow them to re-enter
# - output contains original string
# - output is single string

defmodule CountingCharacters do
  def start() do
    IO.puts("------ Counting characters ------")
    user_value = IO.gets("What is the input string?\n") |> String.trim()

    string_analyizer(user_value)
  end

  defp count_whitespaces(str) do
    str
    |> String.split(" ")
    |> Enum.count()
    |> Kernel.-(1)
  end

  def string_analyizer(str) do
    if(String.length(str) == 0) do
      user_value =
        IO.gets("Oh no the string was empty! What is the input string?\n") |> String.trim()

      string_analyizer(user_value)
    else
      IO.puts(
        "#{str} has #{String.length(str)} characters, there are #{count_whitespaces(str)} spaces"
      )
    end
  end
end
