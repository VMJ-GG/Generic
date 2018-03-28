module Euler
  module Algorithms
    class CryptographicAlgorithm < Algorithm
      attr_accessor :class
      DEFAULT_OPTIONS = {
        allow_special_chars: false
      }

      def initialize(name, classification)
        super(name, :cryptographic)

        @class = classification
        @options = DEFAULT_OPTIONS
      end
    end
  end
end
