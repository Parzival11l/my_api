# frozen_string_literal: true

module Resolvers
  module Pets
    class UserPets < Resolvers::BaseResolver

      argument :id, ID, required: true

      type [Types::Models::PetType], null: false

      def resolve(id:)
        User.find(id).pets
      end
    end
  end
end