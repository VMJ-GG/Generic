require 'ostruct'

module Euler
  # Arguments Objects are an Hash like structure used to store data about algorithm
  # functionalities like needed arguments.
  #
  # Required options fields are:
  # - arguments -> Every arguments necessary to algorithm for working
  #   (WARNING: don't confuse it with body arguments)
  # - body_arguments -> Every arguments that as to be given to algorithm's body
  #   (to be more clear: these arguments are used in each body cycle)
  #
  class Arguments
    attr_reader :body

    def initialize
      @hash = OpenStruct.new
      @body = []
    end

    def method_missing(meth, *args)
      @hash.send(meth, *args)
    end
  end
end
