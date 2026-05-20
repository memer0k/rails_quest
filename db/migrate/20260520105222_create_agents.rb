class CreateAgents < ActiveRecord::Migration[8.1]
  def change
    create_table :agents do |t|
      t.string :codename, null: false
      t.integer :level, default: 1, null: false
      t.boolean :active, default: true, null: false

      t.timestamps
    end
    
    add_index :agents, :codename, unique: true
  end
end
