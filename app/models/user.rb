class User < ApplicationRecord
  has_many :posts
  validates :name, :username, :email, presence: true
  validates :username, :email, uniqueness: true
  validates :username, length: {minimum: 5, maximum: 8}
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP } 
end
