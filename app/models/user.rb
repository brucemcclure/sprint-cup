class User < ApplicationRecord
    has_secure_password
    has_many :members
    has_many :leagues, through: :members
    has_many :points
    has_many :sprints, through: :points

    validates :email, presence: true, uniqueness: true
    validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
    validates :username, presence: true, uniqueness: true
    validates :password,
              length: { minimum: 6 },
              if: -> { new_record? || !password.nil? }
  end