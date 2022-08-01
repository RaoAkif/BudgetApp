class User < ApplicationRecord
  has_many :categories, dependent: :destroy
  has_many :transactions, dependent: :destroy

  validates :name, presence: true, length: { minimum: 3, maximum: 50 }
end
