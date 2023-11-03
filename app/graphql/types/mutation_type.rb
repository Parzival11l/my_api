# frozen_string_literal: true

module Types
  class MutationType < Types::BaseObject

    field :registration, mutation: Mutations::Authentication::Registration
    field :login, mutation: Mutations::Authentication::Login

  end
end
