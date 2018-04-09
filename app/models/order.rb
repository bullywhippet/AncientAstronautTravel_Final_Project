class Order < ApplicationRecord
  belongs_to :customer

  has_many :order_items, dependent: :destroy
  # has_many :order_items, inverse_of: :order
  has_many :tours, through: :order_items
  accepts_nested_attributes_for :order_items, allow_destroy: true

  validates :status, :pst_rate, :gst_rate, :hst_rate,
            :order_date, :sub_total, :total,
            :customer_id, presence: true
  validates :gst_rate, :pst_rate, :hst_rate,
            :total, :sub_total, numericality: true
  validates_associated :customer
end
