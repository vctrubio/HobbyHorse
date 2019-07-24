class Workshop < ApplicationRecord
  belongs_to :organisation, through: :users
end
