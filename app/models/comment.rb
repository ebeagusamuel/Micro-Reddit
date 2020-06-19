class Comment < ApplicationRecord
  belongs_to :post, :user
  validates :body, presence: true
end
