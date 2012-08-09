require 'chemistry/temperature/fahrenheit'
require 'chemistry/temperature/errors'

module Chemistry
  module Temperature
    class ParsedExpression
      TEMPERATURE_FORMAT = /(-?\d+\.?\d*)([fck])/i
      INVALID_CHARACTERS = /[^\-\d\.kfc]/
      UNIT_LOOKUP = {
        'f' => Chemistry::Temperature::Fahrenheit,
        'c' => Chemistry::Temperature::Celsius,
        'k' => Chemistry::Temperature::Kelvin
      }

      def initialize(orig_temperature_string)
        @temperature_string = orig_temperature_string.downcase

        if invalid_expression?
          raise_malformed_input_error
        end
      end

      def number
        @number ||= Float(tokens[1])
      end

      def unit
        @unit ||= UNIT_LOOKUP.fetch(tokens[2])
      end

      def temperature
        @temperature ||= unit.new(number)
      end

      private

      attr_reader :temperature_string

      def invalid_expression?
        raw_tokens.empty?
      end

      def raw_tokens
        temperature_string.match(TEMPERATURE_FORMAT).to_a
      end

      def raise_malformed_input_error
        raise MalformedInputError, invalid_format_message
      end

      def invalid_format_message
       "'#{temperature_string}' has invalid format"
      end

      def tokens
        @tokens ||= raw_tokens
      end
    end
  end
end
