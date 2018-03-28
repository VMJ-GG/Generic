module Euler
  module Algorithms
    class MathematicAlgorithm < Algorithm
      attr_accessor :class
      DEFAULT_OPTIONS = {
        expected_result: nil,
        last_operation: proc {},
        cache_result: true,
        cache_step: 1
      }

      def initialize(name, classification)
        super(name, :mathematic)

        @class = classification
        @options = DEFAULT_OPTIONS
      end
    end
  end
end
