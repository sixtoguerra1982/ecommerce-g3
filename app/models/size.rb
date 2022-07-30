class Size < ApplicationRecord
    has_many :variants
    has_many :products , through: :variants
    has_many :colors , through: :variants
end
