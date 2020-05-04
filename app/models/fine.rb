class Fine < ApplicationRecord
  enum sort: { fine: 0, award: 1 }
  belongs_to :category
end
