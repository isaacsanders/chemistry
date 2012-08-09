require 'test_helper'

class TemperateureTestCase < MiniTest::Unit::TestCase
  private

  def assert_parsed_temperature_equals(temperature_expression, temperature)
    assert_equal Chemistry::Temperature.parse(temperature_expression),
      temperature
  end

  def assert_finds_malformed_input(&block)
    assert_raises Chemistry::Temperature::MalformedInputError, &block
  end
end

class KelvinTest < MiniTest::Unit::TestCase
  def test_returns_kelvin_wrapper
    assert_instance_of Chemistry::Temperature::Kelvin,
      Chemistry::Temperature.kelvin(1)
  end
end

class FahrenheitTest < MiniTest::Unit::TestCase
  def test_returns_fahrenheit_wrapper
    assert_instance_of Chemistry::Temperature::Fahrenheit,
      Chemistry::Temperature.fahrenheit(1)
  end
end

class CelsiusTest < MiniTest::Unit::TestCase
  def test_returns_celsius_wrapper
    assert_instance_of Chemistry::Temperature::Celsius,
      Chemistry::Temperature.celsius(1)
  end
end

class ParseTest < TemperateureTestCase
  def test_F_raises_malformed_input_error
    assert_finds_malformed_input do
      Chemistry::Temperature.parse('f')
    end
  end

  def test_30_raises_malformed_input_error
    assert_finds_malformed_input do
      Chemistry::Temperature.parse('30')
    end
  end

  def test_1oof_raises_malformed_input_error
    assert_finds_malformed_input do
      Chemistry::Temperature.parse('1oof')
    end
  end

  def test_dsfjklsdflkjsdflkj_raises_malformed_input_error
    assert_finds_malformed_input do
      Chemistry::Temperature.parse('dsfjklsdflkjsdflkj')
    end
  end

  def test_parses_neg_32F
    assert_parsed_temperature_equals '-32F',
      Chemistry::Temperature.fahrenheit(-32)
  end

  def test_parses_neg_53_2F
    assert_parsed_temperature_equals '-53.2F',
      Chemistry::Temperature.fahrenheit(-53.2)
  end

  def test_parses_0F
    assert_parsed_temperature_equals '0F',
      Chemistry::Temperature.fahrenheit(0)
  end

  def test_parses_32F
    assert_parsed_temperature_equals '32F',
      Chemistry::Temperature.fahrenheit(32)
  end

  def test_parses_43_1F
    assert_parsed_temperature_equals '43.1F',
      Chemistry::Temperature.fahrenheit(43.1)
  end

  def test_parses_0C
    assert_parsed_temperature_equals '0C',
      Chemistry::Temperature.celsius(0)
  end

  def test_parses_32C
    assert_parsed_temperature_equals '32C',
      Chemistry::Temperature.celsius(32)
  end

  def test_parses_43_1C
    assert_parsed_temperature_equals '43.1C',
      Chemistry::Temperature.celsius(43.1)
  end

  def test_parses_0K
    assert_parsed_temperature_equals '0K',
      Chemistry::Temperature.kelvin(0)
  end
end
