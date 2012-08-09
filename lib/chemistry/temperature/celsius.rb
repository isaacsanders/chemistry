require 'chemistry/temperature'

module Chemistry
  class Temperature
    class Celsius < Chemistry::Temperature
      def to_celsius
        self
      end

      def to_kelvin
        Chemistry::Temperature.kelvin convert_to_kelvin
      end

      def convert_to_kelvin
        @temperature + 273.15
      end

      def to_fahrenheit
        Chemistry::Temperature.fahrenheit convert_to_fahrenheit
      end

      def convert_to_fahrenheit
        (@temperature * (9.0/5.0)) + 32.0
      end
    end
  end
end
