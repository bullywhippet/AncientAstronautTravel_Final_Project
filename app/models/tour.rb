class Tour < ApplicationRecord # :nodoc:
  belongs_to :category
  validates :name, :description, :price, :category_id, presence: true
  mount_uploader :image, ImageUploader
end
