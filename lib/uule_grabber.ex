defmodule UuleGrabber do
  @moduledoc """
  Package for generating UULE codes for use in localized Google searches.
  """

  @doc """
  Calculates the UULE value for a location's canonical name.

  ## Input

  This method accepts the canonical name for a geolocation as defined by Google.

  Latest list of cannonical names can be found and downloaded from:
  https://developers.google.com/adwords/api/docs/appendix/geotargeting

  ## Examples

      iex> UuleGrabber.uule_for_location("Chicago,Illinois,United States")
      "w+CAIQICIeQ2hpY2FnbyxJbGxpbm9pcyxVbml0ZWQgU3RhdGVz"
  """
  def uule_for_location(city) do
    length_index = rem(String.length(city), 64)
    secret_key = Enum.at(base64_dictionary, length_index)
    encoded_city = Base.encode64(city)
    "w+CAIQICI#{<<secret_key>>}#{encoded_city}"
    |> String.replace("=", "")
  end

  defp base64_dictionary do
    upcase_chars = Enum.to_list(?A..?Z)
    downcase_chars = Enum.to_list(?a..?z)
    numbers = Enum.to_list(0..9)
    special_chars = ['-', '_']
    upcase_chars ++ downcase_chars ++ numbers ++ special_chars
  end
end
