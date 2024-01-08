class Movie < ApplicationRecord
  broadcasts_refreshes :movies
  validates :title, presence: true, length: { minimum: 2 }
end
