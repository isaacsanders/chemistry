require 'chemistry/element'

module Chemistry::DSL
  extend self

  def element(name, &definition)
    raise ArgumentError, "`element` must be given a block" unless block_given?
    create_element_class(name).instance_eval &definition
  end

  private

  def create_element_class(name)
    element_class = Class.new(Chemistry::Element)
    Chemistry::Element.const_set(name, element_class)
  end
end
