module Mutations
  module Authentication
    class Registration < BaseMutation

      argument :first_name, String, required: true
      argument :last_name, String, required: true
      argument :email, String, required: true
      argument :password, String, required: true
      argument :photo, ApolloUploadServer::Upload, required: true

      field :token, String, null: false

      def resolve(params)
        file = params[:photo]

        pp 'file1', file

        blob = ActiveStorage::Blob.create_and_upload!(
          io: file,
          filename: file.original_filename,
          content_type: file.content_type
        )

        user = User.new(params)
        user.photo = blob
        user.save!

        if user&.authenticate(params[:password])
          token = JWT.encode({ user_id: user.id }, ENV['JWT_SECRET'], 'HS256')
          { token: }
        end

      end
    end
  end
end
