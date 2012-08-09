require 'chemistry/temperature'

module Chemistry
  class Temperature
    class Kelvin < Chemistry::Temperature
      def to_kelvin
        self
      end

      def to_celsius
        Chemistry::Temperature.celsius convert_to_celsius
      end

      def to_fahrenheit
        to_celsius.to_fahrenheit
      end

      def convert_to_celsius
        @temperature - 273.15
      end
    end
  end
end
