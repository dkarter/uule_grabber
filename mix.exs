defmodule UuleGrabber.Mixfile do
  use Mix.Project

  def project do
    [app: :uule_grabber,
     version: "0.1.0",
     elixir: "~> 1.3",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     description: "Generates uule codes for google to allow localized searches."
     deps: deps()]
  end

  def package do
    [
      maintainers: "Dorian Karter",
      license: "MIT",
      links: %{"Github" => "https://github.com/dkarter/uule_grabber"}
    ]
  end

  def application do
    [applications: [:logger]]
  end

  defp deps do
    []
  end
end
