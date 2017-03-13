class CreateHeroes < ActiveRecord::Migration[5.0]
  def change
    create_table :heroes do |t|
      t.string :name
      t.string :profile_url
      t.integer :base_str
      t.integer :base_agi
      t.integer :base_int
      t.integer :add_str
      t.integer :add_agi
      t.integer :add_int
      t.integer :move_speed
      t.integer :turn_rate
      t.string :attack_type
      t.json :talents

      t.timestamps
    end
  end
end
