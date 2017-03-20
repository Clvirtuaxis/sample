class Change < ActiveRecord::Migration[5.0]
  def change
      change_column :products, :price, :integer
      rename_column :products, :price, :price_in_cents
  end
end
