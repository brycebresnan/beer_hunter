FactoryBot.define do
  types = ["Brewery", "Bar", "Bottle Shop", "Brew Pub"]
  zips = [33813]
  factory(:location) do
    location_name {Faker::Restaurant.name}
    address {Faker::Address.street_address}
    zip {zips.sample}
    category {types.sample}
    overall_rating {Faker::Number.between(from: 1.0, to: 5.0)}
  end
end