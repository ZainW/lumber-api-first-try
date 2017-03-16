class AddHeroTypeToHero < ActiveRecord::Migration[5.0]
  def change
    add_column :heroes, :hero_type, :string
  end
end
