class Movie < ApplicationRecord
  has_many :Bookmarks

  validates :title, presence: true, uniqueness: true
  validates :overview, presence: true
end
