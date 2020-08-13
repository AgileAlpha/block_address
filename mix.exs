defmodule BlockAddress.MixProject do
  use Mix.Project

  def project do
    [
      app: :block_address,
      version: "0.1.0",
      elixir: "~> 1.7",
      description: description(),
      start_permanent: Mix.env() == :prod,
      source_url: "https://github.com/agilealpha/block_address",
      package: %{
        name: "block_address",
        licenses: ["Apache License 2.0"],
        links: %{"GitHub" => "https://github.com/AgileAlpha/block_address"}
      },
      test_coverage: [tool: ExCoveralls],
      preferred_cli_env: [
        coveralls: :test,
        "coveralls.detail": :test,
        "coveralls.post": :test,
        "coveralls.html": :test
      ],
      name: "BlockAddress",
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp description do
    "This package converts Blockchain addresses for Ethereum and Bitcoin from public keys."
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:ex_doc, "~> 0.19", only: :dev, runtime: false},
      {:keccakf1600, "~> 2.0", hex: :keccakf1600_orig},
      {:excoveralls, "~> 0.10", only: :test},
      {:block_base58, "~> 0.1.0"}
    ]
  end
end
