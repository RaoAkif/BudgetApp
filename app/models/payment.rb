class Payment < ApplicationRecord
  belongs_to :author, class_name: 'User'
  has_many :category_payment, dependent: :destroy
  has_many :categories, through: :category_payment

  validates :name, presence: true
  # allow float
  validates :amount, presence: true, numericality: { greater_than: 0 }
end
