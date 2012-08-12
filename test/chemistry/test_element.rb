require 'test_helper'

class ElementTest < MiniTest::Unit::TestCase
  def test_raises_error_without_name
    assert_raises ArgumentError do
      Chemistry::Element.define
    end
  end

  def test_raises_error_without_block
    assert_raises ArgumentError do
      Chemistry::Element.define "Hydrogen"
    end
  end

  def test_defines_an_element
    assert_raises NameError do
      Chemistry::Element::Foobar
    end

    Chemistry::Element.define "Foobar" do
    end

    assert_equal Chemistry::Element::Atom <=> Chemistry::Element::Foobar, 1
  end
end

class DefinitionTest < MiniTest::Unit::TestCase

  def test_full_definition
    Chemistry::Element.define "Hydrogen" do
      symbol 'H'
      atomic_number 1
      atomic_weight 1.00794
    end

    h_atom = Chemistry::Element::Hydrogen.new

    assert_equal h_atom.symbol, 'H'
    assert_equal h_atom.atomic_number, 1
  end
end
