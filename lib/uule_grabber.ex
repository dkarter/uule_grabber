defmodule UuleGrabber do
  @doc """
  Calculates the UULE value for a location's canonical name.

  ## Examples

      iex> UuleGrabber.uule_for_city("Chicago,Illinois,United States")
      "w+CAIQICIeQ2hpY2FnbyxJbGxpbm9pcyxVbml0ZWQgU3RhdGVz"
  """
  def uule_for_city(city) do
    base64_dict = Enum.to_list(?A..?Z) ++ Enum.to_list(?a..?z) ++ Enum.to_list(0..9) ++ ['-','_']
    length_index = rem(String.length(city), 64)
    secret_key = Enum.at(base64_dict, length_index)
    encoded_city = Base.encode64(city)
    "w+CAIQICI#{<<secret_key>>}#{encoded_city}"
    |> String.replace("=","")
  end
end
