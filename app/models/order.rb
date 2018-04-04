class Order < ApplicationRecord
  belongs_to :customer

  has_many :order_items
  has_many :tours, through: :order_items
  accepts_nested_attributes_for :order_items, allow_destroy: true
end
