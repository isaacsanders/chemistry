require 'minitest/autorun'
require 'minitest/colorize'

class ElementTestCase < MiniTest::Unit::TestCase
  def element
    @element ||= Class.new(Chemistry::Element)
  end
end
