class CreateAgents < ActiveRecord::Migration[5.2]
  def change
    create_table :agents do |t|
      t.text :name
      t.text :email
      t.text :phone

      t.timestamps
    end
  end
end
