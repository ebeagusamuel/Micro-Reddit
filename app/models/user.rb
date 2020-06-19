class User < ApplicationRecord
  has_many :posts
  has_many :comments
  validates :name, presence: true
  validates :username, presence: true, length: { minimum: 6 }
  validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP }
end
