require 'test_helper'
require 'chemistry/temperature/fahrenheit'

class ToITest < MiniTest::Unit::TestCase
  def test_returns_temperature
    temp = 1
    assert_equal Chemistry::Temperature::Unit.new(temp).to_i, temp.to_i
  end
end

class ToFTest < MiniTest::Unit::TestCase
  def test_returns_temperature
    temp = 1.0
    assert_equal Chemistry::Temperature::Unit.new(temp).to_f, temp.to_f
  end
end

class EqualityTest < MiniTest::Unit::TestCase
  def test_nontemperatures_return_false
    temp = Chemistry::Temperature::Fahrenheit.new(1)
    refute_equal temp, 'a'
  end

  def test_32F_and_0C_return_true
    f = Chemistry::Temperature::Fahrenheit.new(32)
    c = Chemistry::Temperature::Celsius.new(0)
    assert_equal f, c
  end
end

