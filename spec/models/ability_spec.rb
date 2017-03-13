require 'rails_helper'

RSpec.describe Ability, type: :model do
  it { should belong_to(:hero) }
  it { should validate_presence_of(:name)}
  it { should validate_presence_of(:damage)}
  it { should validate_presence_of(:damage_type)}
  it { should validate_presence_of(:mana_cost)}
  it { should validate_presence_of(:cooldown)}
  it { should validate_presence_of(:ability_type)}
  it { should validate_presence_of(:more)}
  it { should validate_presence_of(:hero_id)}
end
