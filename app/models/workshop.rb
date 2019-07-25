class Workshop < ApplicationRecord

  mount_uploader :photo, PhotoUploader

  belongs_to :organisation, dependent: :destroy
  has_many :users, through: :organisations

end

