# ExCodeship

A Codeship wrapper for Elixir
    Requires an environment variable to be set for CODESHIP_KEY which can be obtained in your codeship account

## Installation
  
  1. Add ex_codeship to your list of dependencies in `mix.exs`:

        def deps do
          [{:ex_codeship, "~> 0.0.1"}]
        end

  2. Ensure ex_codeship is started before your application:

        def application do
          [applications: [:ex_codeship]]
        end

