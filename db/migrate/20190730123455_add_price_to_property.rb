class AddPriceToProperty < ActiveRecord::Migration[5.2]
  def change
    add_column :properties, :price, :text
  end
end
