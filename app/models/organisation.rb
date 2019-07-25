class Organisation < ApplicationRecord
  mount_uploader :photo, PhotoUploader

  belongs_to :user, dependent: :destroy
end
