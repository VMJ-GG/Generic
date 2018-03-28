# fronzen_string_literal: true
module Euler
  module Algorithms
    attr_reader :added

    SUPPORTED_TYPES = [:mathematic, :cryptographic]

    def add(**args, &block)
      name, categorization = args.shift
      type, classification = categorization

      case type
        when :mathematic
          ref = MathematicAlgorithm.new(name, classification)
          block.call ref, ref.arguments, ref.options
        when :cryptographic
          ref = CryptographicAlgorithm.new(name, classification)
          block.call ref, ref.arguments, ref.options
        else
          raise ArgumentError, "Algorithm NOT supported! Possible values are #{SUPPORTED_TYPES.map(&:capitalize).join(', ')}."
      end
    end
  end
end
