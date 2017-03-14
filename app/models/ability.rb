class Ability < ApplicationRecord
  belongs_to :hero

  validates_presence_of :name, :damage, :damage_type, :mana_cost, :cooldown, :ability_type, :hero_id
end
