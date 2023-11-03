# frozen_string_literal: true

module Types
  module Models
    class PetType < Types::BaseObject
      field :id, ID, null: false
      field :name, String, null: true
      field :description, String, null: true

      field :user_id, ID, null: false

      field :user, Types::Models::UserType
    end
  end
end