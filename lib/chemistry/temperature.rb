require 'chemistry/temperature/kelvin'
require 'chemistry/temperature/fahrenheit'
require 'chemistry/temperature/celsius'

module Chemistry
  class Temperature
    class << self
      def kelvin(temperature)
        Chemistry::Temperature::Kelvin.new(temperature)
      end

      def celsius(temperature)
        Chemistry::Temperature::Celsius.new(temperature)
      end

      def fahrenheit(temperature)
        Chemistry::Temperature::Fahrenheit.new(temperature)
      end
    end

    def initialize(temperature)
      @temperature = temperature
    end

    def to_i
      @temperature.to_i
    end

    def to_f
      @temperature.to_f
    end
  end
end
