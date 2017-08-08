class Product < ApplicationRecord
  belongs_to :brand
  validates :name, presence: true
  validates :price, numericality: { greater_than: 0, less_than: 101 }
end
