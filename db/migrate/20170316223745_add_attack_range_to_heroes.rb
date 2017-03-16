class AddAttackRangeToHeroes < ActiveRecord::Migration[5.0]
  def change
    add_column :heroes, :attack_range, :integer
  end
end
