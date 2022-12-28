defmodule K256.MixProject do
  use Mix.Project

  @version "0.0.6"

  def project do
    [
      app: :k256,
      version: @version,
      elixir: "~> 1.14",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:rustler, "~> 0.26.0"},
      {:rustler_precompiled, "~> 0.5"},
      {:nimble_csv, "~> 1.1", only: [:dev, :test]},
      {:dialyxir, "~> 1.0", only: [:dev], runtime: false},
      {:mix_test_watch, "~> 1.0", only: [:dev, :test], runtime: false}
    ]
  end
end
