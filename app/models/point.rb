class Point < ApplicationRecord
  belongs_to :user
  belongs_to :sprint
  belongs_to :fine
end
