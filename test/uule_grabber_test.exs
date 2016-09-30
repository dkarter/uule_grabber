defmodule UuleGrabberTest do
  use ExUnit.Case

  doctest UuleGrabber

  test ".uule_for_location returns valid uule values" do
    locations_uules = %{
      "Chicago,Illinois,United States" =>
        "w+CAIQICIeQ2hpY2FnbyxJbGxpbm9pcyxVbml0ZWQgU3RhdGVz",
      "Washington,District of Columbia,United States" =>
        "w+CAIQICItV2FzaGluZ3RvbixEaXN0cmljdCBvZiBDb2x1bWJpYSxVbml0ZWQgU3RhdGVz",
      "Jacksonville Beach,Florida,United States" =>
        "w+CAIQICIoSmFja3NvbnZpbGxlIEJlYWNoLEZsb3JpZGEsVW5pdGVkIFN0YXRlcw"
    }

    Enum.each(locations_uules, fn({loc, uule}) ->
      assert UuleGrabber.uule_for_location(loc) == uule
    end)
  end
end
