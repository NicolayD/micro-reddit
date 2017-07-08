class Post < ApplicationRecord
  valides :title, presence: true, length: { minimum: 6, maximum: 40 }
end
