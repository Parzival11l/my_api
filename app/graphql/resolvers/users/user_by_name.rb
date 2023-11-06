# frozen_string_literal: true

module Resolvers
  module Users
    class UserByName < Resolvers::BaseResolver

      argument :user_name_search, String, required: true

      type [Types::Models::UserType], null: true

      def resolve(user_name_search:)
        User.where("concat_ws(' ', first_name, last_name) ILIKE ?", "%#{user_name_search}%")
      end
    end
  end
end