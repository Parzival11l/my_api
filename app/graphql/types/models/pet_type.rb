# frozen_string_literal: true

module Types
  module Models
    class PetType < Types::BaseObject
      field :id, ID, null: false
      field :name, String, null: true
      field :description, String, null: true
      field :photo_url, String, null: true
      field :video_url, String, null: true

      field :user_id, ID, null: false

      field :user, Types::Models::UserType

      def photo_url
        if object.photo.present?
          rails_blob_path(object.photo, only_path: true)
        end
      end

      def video_url
        if object.video.present?
          rails_blob_path(object.video, only_path: true)
        end
      end

    end
  end
end