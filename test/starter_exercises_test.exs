defmodule StarterExercisesTest do
  use ExUnit.Case
  doctest StarterExercises

  test "greets the world" do
    assert StarterExercises.hello() == :world
  end
end
