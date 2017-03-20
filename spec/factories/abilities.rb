FactoryGirl.define do
  damage_types = ["Magical", "Physical", "Magical/Physical"]
  ability_types = ["Active", "Passive"]
  factory :ability do
    name { Faker::Hacker.verb }
    more {
      {
        something: "more",
        is: "coming"
      }
    }
    hero_id nil

  end
end
