class Ability < ApplicationRecord
  belongs_to :hero

  validates_presence_of :name, :hero_id
  #  :damage, :damage_type, :mana_cost, :cooldown, :ability_type,
end
