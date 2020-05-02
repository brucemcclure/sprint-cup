class League < ApplicationRecord
  belongs_to :category
  has_many :sprints
end
