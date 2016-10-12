defmodule ExCodeshipTest do
  use ExUnit.Case
  doctest ExCodeship

  test "process_url" do
    assert ExCodeship.process_url("projects") == "https://codeship.com/api/v1/projects.json?api_key="<> System.get_env("CODESHIP_KEY")
  end
end
