class ChangeCardsTable < ActiveRecord::Migration[8.0]
  def change
    change_table :cards do |t|
      t.remove :value
      t.remove :is_consumable

      t.string :type
      t.integer :durability
      t.integer :dmg
      t.string :effect
    end
  end
end