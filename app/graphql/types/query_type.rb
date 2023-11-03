# frozen_string_literal: true

module Types
  class QueryType < Types::BaseObject

    # USERS
    field :fetch_users, resolver: Resolvers::Users::FetchUsers
    field :current_user, resolver: Resolvers::Users::CurrentUser

    # PETS
    field :user_pets, resolver: Resolvers::Pets::UserPets

  end
end
