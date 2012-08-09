require 'test_helper'

class InitializeTest < MiniTest::Unit::TestCase
  def test_takes_a_valid_temperature_string
    assert Chemistry::Temperature::ParsedExpression.new '2K'
  end

  def test_rejects_invalid_strings
    assert_raises Chemistry::Temperature::MalformedInputError do
      Chemistry::Temperature::ParsedExpression.new 'sdffasd'
    end
  end
end

class NumberTest < MiniTest::Unit::TestCase
  def test_returns_float_on_good_input
    expression = Chemistry::Temperature::ParsedExpression.new '1f'
    assert_instance_of Float, expression.number
  end
end

class TemperatureUnitTest < MiniTest::Unit::TestCase
  def test_returns_kelvin_on_kelvin_input
    expression = Chemistry::Temperature::ParsedExpression.new '0K'
    assert_equal expression.unit, Chemistry::Temperature::Kelvin
  end

  def test_returns_celsius_on_celsius_input
    expression = Chemistry::Temperature::ParsedExpression.new '0C'
    assert_equal expression.unit, Chemistry::Temperature::Celsius
  end

  def test_returns_fahrenheit_on_fahrenheit_input
    expression = Chemistry::Temperature::ParsedExpression.new '0F'
    assert_equal expression.unit, Chemistry::Temperature::Fahrenheit
  end
end
