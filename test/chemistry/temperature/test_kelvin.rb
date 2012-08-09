require 'test_helper'

class ToKelvinTest < MiniTest::Unit::TestCase
  def test_returns_self
    temp = Chemistry::Temperature::Kelvin.new(1)
    assert_equal temp, temp.to_kelvin
  end
end

class ToCelsiusTest < MiniTest::Unit::TestCase
  def test_instance_of_celsius
    temp = Chemistry::Temperature::Kelvin.new(1)
    assert temp.to_celsius.instance_of? Chemistry::Temperature::Celsius
  end

  def test_difference_of_273
    base = 1
    temp = Chemistry::Temperature::Kelvin.new(base)
    assert_equal (temp.to_i - temp.to_celsius.to_i).abs, 273
  end
end

class ToFahrenheitTest < MiniTest::Unit::TestCase
  def test_273_15K_is_32F
    temp = Chemistry::Temperature::Kelvin.new(273.15)
    assert_equal temp.to_fahrenheit.to_i, 32
  end
end
