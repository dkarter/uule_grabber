# UuleGrabber

Generates uule codes for google to allow localized searches.

Ported to Elixir based on the php implementation:
https://github.com/512banque/uule-grabber


## Installation

TODO: not published yet

  1. Add `uule_grabber` to your list of dependencies in `mix.exs`:

    ```elixir
    def deps do
      [{:uule_grabber, "~> 0.1.0"}]
    end
    ```

  2. Ensure `uule_grabber` is started before your application:

    ```elixir
    def application do
      [applications: [:uule_grabber]]
    end
    ```

# TODO

- [ ] add csv reading ability to grab cannonical names from https://developers.google.com/adwords/api/docs/appendix/geotargeting?hl=fr&csw=1
- [ ] publish to hex
