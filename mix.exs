defmodule ExGrid.Mixfile do
  use Mix.Project

  def project do
    [app: :exgrid,
      version: "0.3.0",
      elixir: ">= 1.2.5",
      description: description,
      package: package,
      deps: deps]
  end

  # Configuration for the OTP application
  #
  # Type `mix help compile.app` for more information
  def application do
    [applications: [:httpotion]]
  end

  defp deps do
    [ {:ibrowse, "~> 4.2.2"},
      {:httpotion, "~> 1.0.0"},
      {:json, "~> 0.3.2"},
      {:timex, ">= 2.1.4"}
    ]
  end

  def description do
    "Elixir bindings for SendGrid's REST API"
  end

  def package do
    [
      contributors: ["Bradley Smith"],
      licenses: ["The MIT License"],
      links: %{
        "GitHub" => "https://github.com/bradleyd/exgrid"
      }
    ]
  end
end
