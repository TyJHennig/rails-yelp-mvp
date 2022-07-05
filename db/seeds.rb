require 'faker'
puts "deleting all previous seeds"
Restaurant.destroy_all

puts "creating 5 new restaurants"
5.times do
  Restaurant.create!(
    name: Faker::Restaurant.name,
    address: Faker::Address.street_address,
    category: Restaurant::CUISINE.sample
  )
end
puts "done!"
