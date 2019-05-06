defmodule EOSRPC.Mixfile do
  use Mix.Project

  def project do
    [
      app: :eosrpc,
      version: "0.5.0",
      elixir: "~> 1.5",
      start_permanent: Mix.env() == :prod,
      description: "Simple EOSRPC Wrapper for Elixir",
      package: package(),
      deps: deps(),
      source_url: "https://github.com/BeSpiral/eosrpc-elixir-wrapper",
      docs: [
        main: "readme",
        extras: ["README.md"]
      ]
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
      {:tesla, "1.2.1"},
      {:jason, "~> 1.0.0"},
      {:timex, "~> 3.4"},
      {:ex_doc, "~> 0.19", only: :dev, runtime: false},

      # dev
      {:credo, "~> 0.10", only: [:dev, :test], runtime: false}
    ]
  end

  defp package() do
    [
      name: "eosrpc",
      files: ["lib", "test", "mix.exs", "README.md", "LICENSE*"],
      licenses: ["GNU GPLv3"],
      links: %{"Github" => "https://github.com/BeSpiral/eosrpc-elixir-wrapper"},
      maintainers: ["Leo Ribeiro", "Julien Lucca"]
    ]
  end
end
