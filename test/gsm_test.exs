defmodule GSMTest do
  use ExUnit.Case, async: true
  import GSM
  alias GSM.BadCharacter
  doctest GSM

  describe "to_gsm/1" do
    test "simple UTF-8 to GSM" do
      assert to_gsm("simple") == "simple"
    end

    test "invalid GSM characters" do
      assert_raise(BadCharacter, ~s(Unsupported GSM-7 character: \"б\"), fn ->
        to_gsm("баба")
      end)

      assert_raise(BadCharacter, ~s(Unsupported GSM-7 character: <<192>>), fn ->
        to_gsm(<<192>>)
      end)
    end

    test "that extension char are invalid" do
      assert_raise(BadCharacter, ~s(Unsupported GSM-7 character: \"[\"), fn ->
        to_gsm("[")
      end)
    end
  end

  describe "to_utf8/1" do
    test "simple GSM to UTF-8" do
      assert to_utf8("simple") == "simple"
    end

    test "invalid GSM characters" do
      assert_raise(BadCharacter, ~s(Unsupported GSM-7 character: \"б\"), fn ->
        to_utf8("баба")
      end)

      assert_raise(BadCharacter, ~s(Unsupported GSM-7 character: <<192>>), fn ->
        to_gsm(<<192>>)
      end)
    end

    test "single escape code" do
      assert to_utf8("\x1B") == ""
    end
  end

  describe "valid?/1" do
    test "invalid valid GSM text with extension char" do
      refute valid?("GSM []")
    end

    test "invalid GSM text" do
      refute valid?("баба")
    end
  end
end
