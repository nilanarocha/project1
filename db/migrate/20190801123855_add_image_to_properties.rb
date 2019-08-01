class AddImageToProperties < ActiveRecord::Migration[5.2]
  def change
    add_column :properties, :second_image, :text
  end
end
