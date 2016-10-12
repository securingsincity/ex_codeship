defmodule ExCodeship.Mixfile do
  use Mix.Project

  def project do
    [app: :ex_codeship,
     version: "1.0.0",
     elixir: "~> 1.2",
     description: description,
     package: package,
     deps: deps]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    [ applications: [:httpoison, :exjsx]]
  end

  # Dependencies can be Hex packages:
  #
  #   {:mydep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:mydep, git: "https://github.com/elixir-lang/mydep.git", tag: "0.1.0"}
  #
  # Type "mix help deps" for more examples and options
  defp deps do
    [{:httpoison, "~> 0.9.0"},
      {:ex_doc, ">= 0.0.0", only: :dev},
      { :exjsx, "~> 3.2.0", app: false }]
  end

  defp description do
    """
    A Codeship wrapper for Elixir
    Requires an environment variable to be set for CODESHIP_KEY which can be obtained in your codeship account
    """
  end


  defp package do
    [ files: [ "lib", "mix.exs", "README.md", "LICENSE" ],
      maintainers: [ "James Hrisho" ],
      licenses: [ "MIT" ],
      links: %{ "GitHub" => "https://github.com/securingsincity/ex_codeship" } ]
  end
end
