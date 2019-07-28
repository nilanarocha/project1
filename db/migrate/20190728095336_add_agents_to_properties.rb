class AddAgentsToProperties < ActiveRecord::Migration[5.2]
  def change
    add_reference :properties, :agents, foreign_key: true
  end
end
