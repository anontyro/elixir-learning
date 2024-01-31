# EXERCISE 1
# Take in input from the user and return a greeting
# extra work:
# - No variables
#  - Input and output should be different variables ✓
#  - create one of several different greatings ✓
#
#
defmodule HelloWorld do
  @greetings [
    "Hello",
    "Hi",
    "Hey",
    "Howdy",
    "Yo",
    "Sup",
    "Greetings",
    "Salutations",
    "Bonjour",
    "Hola",
    "Ciao",
    "Hallo",
    "Hej",
    "Aloha",
    "Shalom",
    "Namaste",
    "Salaam",
    "Konnichiwa",
    "Merhaba",
    "Sveiki",
    "Szia",
    "Selam",
    "Saluton",
    "Ahoj",
    "Zdravo"
  ]
  @welcome_message [
    "nice to meet you",
    "good day",
    "hope you are doing well",
    "good evening",
    "good morning"
  ]

  def user_message(userInput) do
    "test"
  end

  def start() do
    rand_greeting = Enum.random(@greetings)
    rand_msg = Enum.random(@welcome_message)

    IO.puts("------ Hello World ------")
    user_value = IO.gets("#{rand_greeting}, what is your name?\n") |> String.trim()

    IO.puts("#{rand_greeting} #{user_value}, #{rand_msg}")
  end
end
