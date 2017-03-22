class Chgprice2 < ActiveRecord::Migration[5.0]
  def change
      #change_column_null :products, :price, :decimal, precision: 5, scale: 2
      add_column :products, :price, :decimal
  end
end
