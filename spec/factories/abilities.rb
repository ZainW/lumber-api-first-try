FactoryGirl.define do
  damage_types = ["Magical", "Physical", "Magical/Physical"]
  ability_types = ["Active", "Passive"]
  factory :abilities do
    name { Faker::Hacker.verb }
    damage { "#{Faker::Number.number(3)}/#{Faker::Number.number(3)}/#{Faker::Number.number(3)}/#{Faker::Number.number(3)}" }
    damage_type { damage_types[rand(0..2)]}
    mana_cost { Faker::Number.number(3) }
    cooldown { Faker::Number.number(2) }
    ability_type { ability_types[rand(0..1)] }
    more {
      {
        something: "more",
        is: "coming"
      }
    }
    hero_id nil

  end
end
