class Category < ApplicationRecord
  belongs_to :users

  validates: :name, presence: true, length: { minimum: 3, maximum: 50 }
  validates: :icon, presence: true
end
