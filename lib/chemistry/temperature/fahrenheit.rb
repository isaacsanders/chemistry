require 'chemistry/temperature'

module Chemistry
  class Temperature
    class Fahrenheit < Chemistry::Temperature
      def to_fahrenheit
        self
      end

      def to_kelvin
        to_celsius.to_kelvin
      end

      def to_celsius
        Chemistry::Temperature.celsius convert_to_celsius
      end

      def convert_to_celsius
        (@temperature - 32.0) / (9.0/5.0)
      end
    end
  end
end
