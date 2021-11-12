class Movie < ApplicationRecord
  has_many :bookmarks

  validates :title, uniqueness: true
  validates :title, presence: true
  validates :overview, presence: true
end

# A movie must have a unique title.

# A list must have a unique name.

# A bookmark must be linked to a movie and a list, and the [movie, list] pairings should be unique.

# The comment of a bookmark cannot be shorter than 6 characters.
