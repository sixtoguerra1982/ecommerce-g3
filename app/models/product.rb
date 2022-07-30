class Product < ApplicationRecord
  has_and_belongs_to_many :categories

  has_many :order_items
  has_many :orders, through: :order_items
 
  has_many :variants

  #tiene muchos colores a traves de variantes 
  has_many :colors , through: :variants
  
  #tiene muchos tamaños a traves de variantes 
  has_many :sizes , through: :variants

  def self.available_stock
    arreglo = []
    products = Product.all
    products.each do |product|
      stock = product.variants.sum(:stock)
      if stock > 0
        arreglo.push product
      end  
    end
    arreglo
  end

  def stock
    self.variants.sum(:stock)
  end

end
