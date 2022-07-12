class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list
  validates_associated :movie, uniqueness: true
  validates_associated :list, uniqueness: true
  validates :comment, length: { minimum: 6 }
  validates :movie, uniqueness: { scope: :list }
end
