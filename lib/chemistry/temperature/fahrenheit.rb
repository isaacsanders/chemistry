require 'chemistry/temperature/unit'
require 'chemistry/temperature/celsius'

module Chemistry
  module Temperature
    class Fahrenheit < Chemistry::Temperature::Unit
      def to_fahrenheit
        self
      end

      def to_kelvin
        to_celsius.to_kelvin
      end

      def to_celsius
        Chemistry::Temperature::Celsius.new convert_to_celsius
      end

      def convert_to_celsius
        (@temperature - 32.0) / (9.0/5.0)
      end
    end
  end
end
