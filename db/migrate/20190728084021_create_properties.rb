class CreateProperties < ActiveRecord::Migration[5.2]
  def change
    create_table :properties do |t|
      t.text :address
      t.text :description
      t.text :location
      t.text :image
      t.integer :property_types_id
      t.integer :agents_id

      t.timestamps
    end
  end
end
