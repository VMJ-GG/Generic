# fronzen_string_literal: true
module Euler
  module Algorithms
    class << self
      SUPPORTED_TYPES = [:mathematic, :cryptographic]

      def add(*args)
        name, categorization = args.first.shift
        type, classification = categorization

        case type
          when :mathematic
            ref = MathematicAlgorithm.new(name.to_s, classification)
            yield(ref, ref.arguments, ref.options) if block_given?
          when :cryptographic
            ref = CryptographicAlgorithm.new(name.to_s, classification)
            yield(ref, ref.arguments, ref.options) if block_given?
          else
            raise ArgumentError, "Algorithm NOT supported!" +
              "Possible values are #{Algorithms::SUPPORTED_TYPES.map(&:capitalize).join(', ')}."
        end
      end
    end
  end
end
