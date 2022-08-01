class User < ApplicationRecord
  has_many :categories, dependent: :destroy
  has_many :transactions, dependent: :destroy
  
end
