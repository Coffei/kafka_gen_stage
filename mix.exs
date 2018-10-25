defmodule KafkaGenStage.MixProject do
  use Mix.Project

  def project do
    [
      app: :kafka_gen_stage,
      version: "0.1.0",
      elixir: "~> 1.7",
      package: package(),
      description: "Klarna's Brod kafka client wrapped into GenStage.",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp deps do
    [
      {:brod, "~> 3.7.0"},
      {:gen_stage, "~> 0.14.0"},
      {:inch_ex, github: "rrrene/inch_ex", only: [:dev, :test]},
      {:ex_doc, "~> 0.19", only: [:dev, :docs], runtime: false},
      {:credo, "~> 0.10.0", only: [:dev, :test], runtime: false},
      {:dialyxir, "~> 1.0.0-rc.3", only: [:dev], runtime: false}
    ]
  end

  defp package do
    %{
      licences: ["Apache 2"],
      maintainers: ["Matej Bosak"]
    }
  end
end