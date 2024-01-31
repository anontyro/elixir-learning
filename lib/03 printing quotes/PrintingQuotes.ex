# EXERCISE 3
# Program that takes in a quote and person and adds it to
# an array of quotes to be viewed back
#
# example:
# What is the quote? Those aren't the droids
# Who said it? Obi Wan
# "Those aren't the droids" - Obi Wan
#
# Additional
#  - Add values to an array as object that can be recalled

defmodule Quote do
  defstruct quote: "", person: ""
end

defmodule PrindingQutoes do
  @spec start() :: :ok
  def start() do
    IO.puts("------ Printing Quotes ------")
    quotes = []

    quotes = add_quote(quotes)

    Enum.map(quotes, fn quote ->
      IO.puts(" \"#{quote.quote}\" - #{quote.person}")
    end)
  end

  def add_quote(quotes) do
    add_quote = IO.gets("Would you like to add another quote? (y/n)\n") |> String.trim()

    if(add_quote == "y") do
      add_quote(get_user_quote(quotes))
    else
      quotes
    end
  end

  def get_user_quote(quotes) do
    user_value_quote = IO.gets("What is the quote?\n") |> String.trim()
    user_value_person = IO.gets("Who said it?\n") |> String.trim()

    [%Quote{quote: user_value_quote, person: user_value_person} | quotes]
  end
end
