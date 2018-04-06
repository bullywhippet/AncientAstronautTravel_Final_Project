class Province < ApplicationRecord
  has_many :customers, dependent: :destroy
  validates :name, :gst_rate, :pst_rate, :hst_rate, presence: true
  validates :gst_rate, :pst_rate, :hst_rate, numericality: true
end
