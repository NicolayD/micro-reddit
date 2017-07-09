class Post < ApplicationRecord
  belongs_to :user
  validates :title, presence: true, length: { minimum: 6, maximum: 40 }
  validates :user, presence: true
end
