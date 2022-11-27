FactoryBot.define do
  types = ["Brewery", "Bar", "Bottle Shop", "Brew Pub"]
  factory(:location) do
    location_name {Faker::Restaurant.name}
    address {Faker::Address.street_address}
    zip {Faker::Address.zip}
    category {types.sample}
    overall_rating {Faker::Number.between(from: 1.0, to: 5.0)}
  end
end