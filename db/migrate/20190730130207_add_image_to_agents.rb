class AddImageToAgents < ActiveRecord::Migration[5.2]
  def change
    add_column :agents, :image, :text
  end
end
