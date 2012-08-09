module Chemistry
  module Temperature
    class Unit
      def initialize(temperature)
        @temperature = temperature
      end

      def to_i
        @temperature.to_i
      end

      def to_f
        @temperature.to_f
      end

      def ==(other)
        if other.kind_of? Chemistry::Temperature::Unit
          to_kelvin == other.to_kelvin
        else
          false
        end
      end
    end
  end
end
