module Euler
  module DSL
    def define(*args, &block)
      Euler::Algorithms.add(*args, &block)
    end
  end
end

self.extend Euler::DSL
