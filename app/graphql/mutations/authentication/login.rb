module Mutations
  module Authentication
    class Login < BaseMutation
      null true

      argument :email, String, required: true
      argument :password, String, required: true

      field :token, String, null: false
      field :user, Types::Models::UserType, null: false

      def resolve(params)
        return unless params

        user = User.find_by(email: params[:email])

        if user&.authenticate(params[:password])
          token = JWT.encode({ user_id: user.id }, ENV['JWT_SECRET'], 'HS256')
          { token:, user: }
        else
          raise GraphQL::ExecutionError, "Invalid Email or Password"
        end

      end
    end
  end
end