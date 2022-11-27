class Seed

  def self.begin
    seed = Seed.new
    seed.generate_locations
  end

  def generate_locations
    types = ["Brewery", "Bar", "Bottle Shop", "Brew Pub"]
    20.times do |i|
      location = Location.create!(
        location_name: Faker::Restaurant.name,
        address: Faker::Address.street_address,
        zip: Faker::Address.zip,
        category: types.sample,
        overall_rating: Faker::Number.between(from: 1.0, to: 5.0)
      )
      puts "Location #{i}: Name is #{location.location_name}, category is '#{location.category}', zip is '#{location.zip}'."
    end
  end
end

Location.destroy_all
Seed.begin