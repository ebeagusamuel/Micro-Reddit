class Post < ApplicationRecord
  belongs_to :User
  validates :title, length: {minimum: 5, maximum: 15}, presence: true
  validates :body, length: {minimum: 30}, presence: true
end
