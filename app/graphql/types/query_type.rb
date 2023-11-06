# frozen_string_literal: true

module Types
  class QueryType < Types::BaseObject

    # USERS
    field :fetch_users, resolver: Resolvers::Users::FetchUsers
    field :current_user, resolver: Resolvers::Users::CurrentUser
    field :user_by_name, resolver: Resolvers::Users::UserByName

    # PETS
    field :user_pets, resolver: Resolvers::Pets::UserPets

    # CUSTOM
    field :random_number, resolver: Resolvers::Custom::RandomNumber

  end
end
