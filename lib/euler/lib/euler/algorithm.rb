module Euler
  module Algorithms
    # This is the root class for every type of algorithm the library implements.
    # This means more flexibility for adding new type of algortihms and so it
    # also improves scalability.
    #
    #   Algorithm
    #     CryptographyAlgorithm
    #     MathematicAlgorithm
    #
    class Algorithm
      attr_reader :name, :type

      def initialize(name, type)
        @name = name
        @type = type
        @body = proc {}
        @arguments = Euler::Arguments.new
      end
    end
  end
end
