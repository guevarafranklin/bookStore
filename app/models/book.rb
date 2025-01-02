class Book < ApplicationRecord
  validate :name, presence: true
  validate :price, presence: true, numericality: true
  
end
