require 'test_helper'

class KelvinTest < MiniTest::Unit::TestCase
  def test_returns_kelvin_wrapper
    assert Chemistry::Temperature.kelvin(1).
      instance_of?(Chemistry::Temperature::Kelvin)
  end
end

class ToITest < MiniTest::Unit::TestCase
  def test_returns_temperature
    temp = 1
    assert_equal Chemistry::Temperature.new(temp).to_i, temp.to_i
  end
end

class ToFTest < MiniTest::Unit::TestCase
  def test_returns_temperature
    temp = 1.0
    assert_equal Chemistry::Temperature.new(temp).to_f, temp.to_f
  end
end

class FahrenheitTest < MiniTest::Unit::TestCase
  def test_returns_fahrenheit_wrapper
    assert Chemistry::Temperature.fahrenheit(1).
      instance_of?(Chemistry::Temperature::Fahrenheit)
  end
end

class CelsiusTest < MiniTest::Unit::TestCase
  def test_returns_celsius_wrapper
    assert Chemistry::Temperature.celsius(1).
      instance_of?(Chemistry::Temperature::Celsius)
  end
end
