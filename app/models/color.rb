class Color < ApplicationRecord
    has_many :variants
    has_many :products , through: :variants
    has_many :sizes , through: :variants
end
