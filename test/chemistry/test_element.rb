require 'test_helper'

class ClassLevelAtomicNumberTest < ElementTestCase
  def test_defines_a_constant
    assert_raises NameError do
      element::ATOMIC_NUMBER
    end

    element.atomic_number 14

    assert_equal element::ATOMIC_NUMBER, 14
  end
end

class InstanceLevelAtomicNumberTest < ElementTestCase
  def test_requires_atomic_number_to_be_defined_on_the_class_level
    assert_raises NameError do
      element.new.atomic_number
    end

    element.atomic_number 123

    assert_equal element.new.atomic_number, 123
  end
end

class ClassLevelAtomicWeightTest < ElementTestCase
  def test_defines_a_constant
    assert_raises NameError do
      element::ATOMIC_WEIGHT
    end

    element.atomic_weight 1.12342314

    assert_equal element::ATOMIC_WEIGHT, 1.12342314
  end
end

class InstanceLevelAtomicWeightTest < ElementTestCase
  def test_requires_atomic_weight_to_be_defined_on_the_class_level
    assert_raises NameError do
      element.new.atomic_weight
    end

    element.atomic_weight 1.12342314

    assert_equal element.new.atomic_weight, 1.12342314
  end
end

class ClassLevelSymbolTest < ElementTestCase
  def test_defines_a_constant
    assert_raises NameError do
      element::SYMBOL
    end

    element.symbol "H"

    assert_equal element::SYMBOL, "H"
  end
end

class InstanceLevelSymbolTest < ElementTestCase
  def test_requires_symbol_to_be_defined_on_the_class_level
    assert_raises NameError do
      element.new.symbol
    end

    element.symbol 'He'

    assert_equal element.new.symbol, 'He'
  end
end

class ClassLevelMeltingPointTest < ElementTestCase
  def test_defines_a_constant
    assert_raises NameError do
      element::MELTING_POINT
    end

    element.melting_point "1K"

    assert_equal element::MELTING_POINT, Chemistry::Temperature.parse("1k")
  end
end

class InstanceLevelMeltingPointTest < ElementTestCase
  def test_requires_symbol_to_be_defined_on_the_class_level
    assert_raises NameError do
      element.new.melting_point
    end

    element.melting_point '1K'

    assert_equal element.new.melting_point, Chemistry::Temperature.parse('1K')
  end
end
