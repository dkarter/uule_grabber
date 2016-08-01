defmodule UuleGrabberTest do
  use ExUnit.Case

  doctest UuleGrabber

  test ".uule_for_city returns valid uule values" do
    assert UuleGrabber.uule_for_city("Chicago,Illinois,United States") == "w+CAIQICIeQ2hpY2FnbyxJbGxpbm9pcyxVbml0ZWQgU3RhdGVz"
    assert UuleGrabber.uule_for_city("Washington,District of Columbia,United States") == "w+CAIQICItV2FzaGluZ3RvbixEaXN0cmljdCBvZiBDb2x1bWJpYSxVbml0ZWQgU3RhdGVz"
    assert UuleGrabber.uule_for_city("Jacksonville Beach,Florida,United States") == "w+CAIQICIoSmFja3NvbnZpbGxlIEJlYWNoLEZsb3JpZGEsVW5pdGVkIFN0YXRlcw"
  end
end
