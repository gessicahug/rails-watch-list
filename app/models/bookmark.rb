class Bookmark < ApplicationRecord
  belongs_to :list
  belongs_to :movie
  validates :movie_id, :list_id, presence: true
  validates :movie, uniqueness: { scope: :list }
  validates :comment, length: { minimum: 6 }
end
