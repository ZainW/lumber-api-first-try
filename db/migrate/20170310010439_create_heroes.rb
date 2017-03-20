class CreateHeroes < ActiveRecord::Migration[5.0]
  def change
    create_table :heroes do |t|
      t.string :name
      t.string :profile_url
      t.integer :base_str
      t.integer :base_agi
      t.integer :base_int
      t.decimal :add_str
      t.decimal :add_agi
      t.decimal :add_int
      t.integer :move_speed
      t.decimal :turn_rate
      t.string :attack_type
      t.jsonb :talents
      t.integer :attack_range
      t.string :hero_type

      t.timestamps
    end
  end
end
