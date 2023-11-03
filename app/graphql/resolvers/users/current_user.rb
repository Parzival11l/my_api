# frozen_string_literal: true

module Resolvers
  module Users
    class CurrentUser < Resolvers::BaseResolver

      type Types::Models::UserType, null: true

      def resolve
        current_user
      end
    end
  end
end