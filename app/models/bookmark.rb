class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list

  validates :movie, uniqueness: { scope: :list,
                                  message: 'Movie has already been added to this list.' }

  validates :comment, length: { minimum: 6 }
end
