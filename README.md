# UuleGrabber

Generates uule codes for google to allow localized searches.

Get the latest geo locations canonical names csv from:
https://developers.google.com/adwords/api/docs/appendix/geotargeting


To use the generated uule code, apply it to the Google query url.

E.g. To search for pizza in Chicago:

```
https://www.google.com/search?q=pizza&uule=w+CAIQICIeQ2hpY2FnbyxJbGxpbm9pcyxVbml0ZWQgU3RhdGVz
```


## Installation

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

## Usage

```elixir
UuleGrabber.uule_for_city("Chicago,Illinois,United States")
# "w+CAIQICIeQ2hpY2FnbyxJbGxpbm9pcyxVbml0ZWQgU3RhdGVz"
```

## Credits

Ported to Elixir based on the php implementation:
https://github.com/512banque/uule-grabber
