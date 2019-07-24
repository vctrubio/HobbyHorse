class Organisation < ApplicationRecord
  belongs_to :user, dependent: :destroy
end
