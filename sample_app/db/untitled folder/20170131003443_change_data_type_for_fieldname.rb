class ChangeDataTypeForFieldname < ActiveRecord::Migration[5.0]
  def change
      change_column :product, :price, :decimal, pricision: 6, scale: 2
  end
end
