class Post < ApplicationRecord
  belongs_to :user
  has_many :comments
  validates :title, presence: true, length: { minimum: 6, maximum: 40 }
  validates :body, length: { maximum: 1500 }
  validates :user, presence: true
end
