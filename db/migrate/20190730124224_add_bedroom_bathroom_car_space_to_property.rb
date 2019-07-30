class AddBedroomBathroomCarSpaceToProperty < ActiveRecord::Migration[5.2]
  def change
    add_column :properties, :bedroom, :integer
    add_column :properties, :bathroom, :integer
    add_column :properties, :car_space, :integer
  end
end
