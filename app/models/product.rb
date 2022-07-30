class Product < ApplicationRecord
  has_and_belongs_to_many :categories

  has_many :order_items
  has_many :orders, through: :order_items
 
  has_many :variants

  #tiene muchos colores a traves de variantes 
  has_many :colors , through: :variants
  
  #tiene muchos tamaños a traves de variantes 
  has_many :sizes , through: :variants
end
