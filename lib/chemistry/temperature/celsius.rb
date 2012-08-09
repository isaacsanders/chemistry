require 'chemistry/temperature/unit'
require 'chemistry/temperature/kelvin'
require 'chemistry/temperature/fahrenheit'

module Chemistry
  module Temperature
    class Celsius < Chemistry::Temperature::Unit
      def to_celsius
        self
      end

      def to_kelvin
        Chemistry::Temperature::Kelvin.new convert_to_kelvin
      end

      def convert_to_kelvin
        @temperature + 273.15
      end

      def to_fahrenheit
        Chemistry::Temperature::Fahrenheit.new convert_to_fahrenheit
      end

      def convert_to_fahrenheit
        (@temperature * (9.0/5.0)) + 32.0
      end
    end
  end
end
