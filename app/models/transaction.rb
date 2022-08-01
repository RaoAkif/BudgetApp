class Transaction < ApplicationRecord
  belongs_to :user
  has_many :categories

  validates :user_id, presence: true
  validates :name, presence: true, length: { minimum: 3, maximum: 50 }
  validates :amount, presence: true
end
