class CreateAbilities < ActiveRecord::Migration[5.0]
  def change
    create_table :abilities do |t|
      t.string :name
      t.integer :damage
      t.string :damage_type
      t.string :mana_cost
      t.integer :cooldown
      t.string :ability_type
      t.jsonb :more
      t.integer :hero_id

      t.timestamps
    end
  end
end
