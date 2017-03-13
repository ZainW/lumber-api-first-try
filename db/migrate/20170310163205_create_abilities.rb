class CreateAbilities < ActiveRecord::Migration[5.0]
  def change
    create_table :abilities do |t|
      t.string :name
      t.string :damage
      t.string :damage_type
      t.string :mana_cost
      t.string :cooldown
      t.string :ability_type
      t.jsonb :more
      t.integer :hero_id

      t.timestamps
    end
  end
end
