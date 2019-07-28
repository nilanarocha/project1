# frozen_string_literal: true

class CreateProperties < ActiveRecord::Migration[5.2]
  def change
    create_table :properties do |t|
      t.text :address
      t.text :description
      t.text :location
      t.text :image

      t.timestamps
    end
  end
end
