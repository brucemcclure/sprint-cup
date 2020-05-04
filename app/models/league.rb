class League < ApplicationRecord
  has_many :members
  has_many :users, through: :members

  belongs_to :category
  has_many :sprints
  belongs_to :user
end
