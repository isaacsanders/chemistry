require 'chemistry/element/atom'

module Chemistry
  module Element
    extend self

    def define(name, &definition)
      if block_given?
        create_element_class(name).instance_eval &definition
      else
        raise ArgumentError, "`element` must be given a block"
      end
    end

    private

    def create_element_class(name)
      element_class = Class.new(Chemistry::Element::Atom)
      Chemistry::Element.const_set(name, element_class)
    end
  end
end
