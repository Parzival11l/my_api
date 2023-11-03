# frozen_string_literal: true

module Resolvers
  module Users
    class FetchUsers < Resolvers::BaseResolver

      type [Types::Models::UserType], null: false

      def resolve
        User.all
      end
    end
  end
end