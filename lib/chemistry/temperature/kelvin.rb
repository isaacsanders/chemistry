require 'chemistry/temperature/unit'
require 'chemistry/temperature/celsius'

module Chemistry
  module Temperature
    class Kelvin < Chemistry::Temperature::Unit
      def to_kelvin
        self
      end

      def to_celsius
        Chemistry::Temperature::Celsius.new convert_to_celsius
      end

      def to_fahrenheit
        to_celsius.to_fahrenheit
      end

      def convert_to_celsius
        @temperature - 273.15
      end

      def ==(other)
        if other.kind_of? Chemistry::Temperature::Kelvin
          to_f == other.to_f
        else
          false
        end
      end
    end
  end
end
