class FieldStock < ActiveRecord::Migration[5.2]
  # remover el atributo stock de product
  # cambiar el tipo de dato de stock de variant a integer
  def change
    remove_column :products, :stock, :integer
  end
end
