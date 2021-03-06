class Customer < ApplicationRecord
  belongs_to :province
  has_many :orders, dependent: :destroy

  validates :email, :encrypted_password, :first_name,
            :last_name, :address, :city, :postal_code,
            :province_id, presence: true
  validates :email,
            format: { with: Devise.email_regexp, message: 'invalid email' }
  validates :encrypted_password, length: { in: 6..20 }
  validates :email, uniqueness: true

  def name
    email
  end
end
