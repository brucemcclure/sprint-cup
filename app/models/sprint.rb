class Sprint < ApplicationRecord
  enum active: { active: 0, inactive: 1 }

  belongs_to :league
  has_many :users
  has_many :users, through: :points
  has_many :points, dependent: :destroy
end
