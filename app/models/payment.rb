class Payment < ApplicationRecord
  belongs_to :author, class_name: 'User'
  has_many :category_payment, dependent: :destroy
  has_many :categories, through: :category_payment

  validates :name, presence: true, length: { minimum: 3, maximum: 50 }
  validates :amount, presence: true, numericality: { greater_than: 0 }
end
