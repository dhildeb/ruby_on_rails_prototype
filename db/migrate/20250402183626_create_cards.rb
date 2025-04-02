class CreateCards < ActiveRecord::Migration[8.0]
  def change
    create_table :cards do |t|
      t.string :name
      t.string :value
      t.string :is_consumable
      
      t.timestamps
    end
  end
end
