class Category < ApplicationRecord # :nodoc:
  has_many :tours, dependent: :destroy
  validates :name, presence: true
end
