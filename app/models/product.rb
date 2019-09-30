class Product < ApplicationRecord
  # validates :name, :price, presence: true
  # validates :price, length: { minimum: 2 }

  belongs_to :supplier

  
  has_many :images
  has_many :product_categories
  has_many :categories, through: :product_categories
  has_many :carted_products
  has_many :orders, through: :carted_products



  def images
    Image.where(product_id: id)
    #returns array
  end

  def is_discounted?
    price <= 10
  end

  def tax
    price * 0.09
  end

  def total
    price + tax
  end
  
end
