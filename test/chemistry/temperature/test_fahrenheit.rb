require 'test_helper'

class ToFahrenheitTest < MiniTest::Unit::TestCase
  def test_returns_self
    temp = Chemistry::Temperature::Fahrenheit.new(1)
    assert_equal temp, temp.to_fahrenheit
  end
end

class ToCelsiusTest < MiniTest::Unit::TestCase
  def test_32F_is_0C
    temp = Chemistry::Temperature::Fahrenheit.new(32)
    assert_equal temp.to_celsius.to_i, 0
  end
end
