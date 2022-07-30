class AddFieldToCategories < ActiveRecord::Migration[5.2]
  def change
    add_column :categories, :father_id, :integer
  end
end
