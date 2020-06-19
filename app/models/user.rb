class User < ApplicationRecord
  validates :name, presence: true
  validates :username, presence: true, length: { minimum: 6 }
  validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP }
end
