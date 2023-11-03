# frozen_string_literal: true

module Resolvers
  module Custom
    class RandomNumber < Resolvers::BaseResolver

      type Integer, null: false

      def resolve
        rand(100000000)
      end
    end
  end
end