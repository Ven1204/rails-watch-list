class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list

  validates :comment, presence: true
  validates :comment, length: {
    minimum: 6, too_short: "%{count} characters is the minimum required." }
  validates :movie_id, uniqueness: { scope: :list_id, message: "is already in the list" }
end
