require 'chemistry/element'

module Chemistry::DSL
  extend self

  def element(name, &definition)
    if block_given?
      element_class = Class.new(Chemistry::Element)
      Chemistry::Element.const_set(name, element_class)
      element_class.instance_eval &definition if block_given?
    else
      raise ArgumentError, "`element` must be given a block"
    end
  end
end
