require 'test_helper'

class ClassLevelAtomicNumberTest < ElementTestCase
  def test_defines_a_constant
    assert_raises NameError do
      element::ATOMIC_NUMBER
    end

    element.atomic_number 14

    assert_equal element::ATOMIC_NUMBER, 14
  end

  def test_must_be_an_integer
    assert_raises TypeError do
      element.atomic_number "a"
    end

    assert_raises TypeError do
      element.atomic_number 1.2
    end

    assert element.atomic_number 12
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

  def test_must_be_a_number
    assert_raises TypeError do
      element.atomic_weight "a"
    end

    assert element.atomic_weight 1.2
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

  def test_must_be_a_string_or_symbol
    assert_raises TypeError do
      element.symbol 1
    end

    assert element.symbol 'H'
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
