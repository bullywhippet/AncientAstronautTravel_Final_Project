class Category < ApplicationRecord # :nodoc:
  has_many :tours
  validates :name, presence: true
end
