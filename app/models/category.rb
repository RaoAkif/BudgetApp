class Category < ApplicationRecord
  belongs_to :author, class_name: 'User'
  has_many :category_payment, dependent: :destroy
  has_many :payments, through: :category_payment

  validates :name, presence: true, length: { minimum: 3, maximum: 50 }
  validates :icon, presence: true

  def total_amount
    payments.sum(:amount)
  end
end
