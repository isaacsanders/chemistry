require 'chemistry/temperature'

module Chemistry
  class Element
    class << self
      def symbol symbol
        const_set :SYMBOL, symbol
      end

      def atomic_number atomic_number
        const_set :ATOMIC_NUMBER, atomic_number
      end

      def atomic_weight atomic_weight
        const_set :ATOMIC_WEIGHT, atomic_weight
      end

      def melting_point melting_point
        const_set :MELTING_POINT, Chemistry::Temperature.parse(melting_point)
      end
    end

    def symbol
      self.class::SYMBOL
    end

    def atomic_number
      self.class::ATOMIC_NUMBER
    end

    def atomic_weight
      self.class::ATOMIC_WEIGHT
    end

    def melting_point
      self.class::MELTING_POINT
    end
  end
end
