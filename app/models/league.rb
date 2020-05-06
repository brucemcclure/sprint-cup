class League < ApplicationRecord
  has_many :members, dependent: :destroy
  has_many :users, through: :members

  belongs_to :category
  has_many :sprints, dependent: :destroy
  belongs_to :user
end
