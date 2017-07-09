class Post < ApplicationRecord
  belongs_to :username
  validates :title, presence: true, length: { minimum: 6, maximum: 40 }
  validates :username, presence: true
end
