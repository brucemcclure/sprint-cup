class Category < ApplicationRecord
    has_many :fines, dependent: :destroy
    has_many :awards, dependent: :destroy
end
