# frozen_string_literal: true

class AddPropertyTypesToProperty < ActiveRecord::Migration[5.2]
  def change
    add_reference :properties, :property_types, foreign_key: true
  end
end
