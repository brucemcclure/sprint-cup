class Sprint < ApplicationRecord
  belongs_to :league
  has_many :users
  has_many :users, through: :points
end
