require 'chemistry/temperature/parsed_expression'

module Chemistry
  module Temperature
    def self.parse(orig_temperature_string)
      expression = Chemistry::Temperature::ParsedExpression.new(orig_temperature_string)
      expression.temperature
    end

    def self.kelvin(temperature)
      Chemistry::Temperature::Kelvin.new(temperature)
    end

    def self.celsius(temperature)
      Chemistry::Temperature::Celsius.new(temperature)
    end

    def self.fahrenheit(temperature)
      Chemistry::Temperature::Fahrenheit.new(temperature)
    end
  end
end
