class Pet < ApplicationRecord
  belongs_to :user, dependent: :destroy

  has_one_attached :video
  has_one_attached :photo
end
