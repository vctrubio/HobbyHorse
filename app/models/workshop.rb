class Workshop < ApplicationRecord
  belongs_to :organisation, dependent: :destroy
  has_many :users, through: :organisations
end


