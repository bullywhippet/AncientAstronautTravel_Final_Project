class Tour < ApplicationRecord # :nodoc:
  belongs_to :category
  validates :name, :description, :price, :category_id, presence: true
  validates :price, numericality: true
  validates :name, uniqueness: true
  mount_uploader :image, ImageUploader

  has_many :order_items, dependent: :destroy
  has_many :orders, through: :order_items
end
