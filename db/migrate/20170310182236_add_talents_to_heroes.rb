class AddTalentsToHeroes < ActiveRecord::Migration[5.0]
  def change
    add_column :heroes, :talents, :jsonb
  end
end
