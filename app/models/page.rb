class Page < ApplicationRecord # :nodoc:
  validates :title, presence: true
end
