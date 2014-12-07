defmodule Stripe.Mixfile do
  use Mix.Project

  def project do
    [
      app: :stripe,
      version: "0.0.1",
      source_url: "https://github.com/SenecaSystems/stripe",
      elixir: "~> 1.0",
      deps: deps,
      description: description,
      package: package
    ]
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

  defp description do
    """
    Wrapper around Stripe's API.

    Full documentation can be found at https://stripe.com/docs/api
    """
  end

  defp package do
    [
      licenses: ["MIT"],
      links: %{github: "https://github.com/SenecaSystems/stripe"},
      contributors: ["Chris Maddox"]
    ]
  end
end
