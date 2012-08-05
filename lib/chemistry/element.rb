module Chemistry
  class Element
    class << self
      def symbol symbol
        if symbol.is_a? String
          const_set :SYMBOL, symbol
        else
          raise TypeError, "can't convert #{symbol.class} into String"
        end
      end

      def atomic_number atomic_number
        if atomic_number.is_a? Integer
          const_set :ATOMIC_NUMBER, atomic_number
        else
          raise TypeError, "can't convert #{atomic_number.class} into Integer"
        end
      end

      def atomic_weight atomic_weight
        if atomic_weight.is_a? Numeric
          const_set :ATOMIC_WEIGHT, atomic_weight
        else
          raise TypeError, "can't convert #{atomic_weight.class} into Numeric"
        end
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
  end
end
