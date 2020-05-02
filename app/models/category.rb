class Category < ApplicationRecord
    has_many :fines, dependent: :destroy
    has_many :awards, dependent: :destroy
    has_many :leagues
end
