require 'test_helper'

class ToCelsiusTest < MiniTest::Unit::TestCase
  def test_returns_self
    temp = Chemistry::Temperature::Celsius.new(1)
    assert_equal temp, temp.to_celsius
  end
end

class ToKelvinTest < MiniTest::Unit::TestCase
  def test_instance_of_kelvin
    temp = Chemistry::Temperature::Celsius.new(1)
    assert temp.to_kelvin.instance_of? Chemistry::Temperature::Kelvin
  end

  def test_difference_of_273
    base = 1
    temp = Chemistry::Temperature::Celsius.new(base)
    assert_equal (temp.to_i - temp.to_kelvin.to_i).abs, 273
  end
end

class ToFahrenheitTest < MiniTest::Unit::TestCase
  def test_0C_is_32F
    temp = Chemistry::Temperature::Celsius.new(0)
    assert_equal temp.to_fahrenheit.to_i, 32
  end
end
