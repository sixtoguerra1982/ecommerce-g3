class Category < ApplicationRecord
  has_and_belongs_to_many :products

  belongs_to :father, class_name: "Category", optional: true

  def childs
    Category.where(father_id: self.id)
  end

  
  # una lista de cada categoría padre y otro de sus hijos, y los hijos de sus hijos
  def self.offspring
    hash = {}
    categories = Category.all
    categories.each do |category|
        hash[category.name] = {}
        if category.childs.count > 0
          category.childs.each do |child|
            hash[category.name][child.name] = child.name
            if child.childs.count > 0
              child.childs.each do |child_child|
                hash[category.name][child.name] = {child_child: child_child.name}
              end
            end
          end
        end
    end
    return hash
  end  
end
