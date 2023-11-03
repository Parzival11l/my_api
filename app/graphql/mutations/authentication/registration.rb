module Mutations
  module Authentication
    class Registration < BaseMutation

      argument :first_name, String, required: true
      argument :last_name, String, required: true
      argument :email, String, required: true
      argument :password, String, required: true

      field :token, String, null: false

      def resolve(params)
        user = User.create!(params)

        if user&.authenticate(params[:password])
          token = JWT.encode({ user_id: user.id }, ENV['JWT_SECRET'], 'HS256')
          { token: }
        end

      end
    end
  end
end
