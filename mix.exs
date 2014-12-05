defmodule Stripe.Mixfile do
  use Mix.Project

  def project do
    [app: :stripe,
     version: "0.0.1",
     elixir: "~> 1.0",
     deps: deps]
  end

  def application do
    [applications: [:logger]]
  end

  defp deps do
    [
      {:ibrowse, github: "cmullaparthi/ibrowse", tag: "v4.1.0"},
      {:httpotion, "~> 0.2.0"},
      {:jazz, "~> 0.2"}
    ]
  end
end
