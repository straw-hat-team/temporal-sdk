defmodule TemporalSdkTest do
  use ExUnit.Case
  doctest TemporalSdk

  test "greets the world" do
    assert TemporalSdk.hello() == :world
  end
end
