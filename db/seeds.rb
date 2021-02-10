puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."

dishoom = { name: "Dishoom", address: "7 Boundary St, London E2 7JE", category: "chinese" }
pizza_east =  { name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", category: "italian" }
scwhartz = { name: "scwhartz", address: "3 rue du burger 75013", category: "japanese" }
wokhouse = { name: "wokhouse", address: "4 rue du wok 75014", category: "belgian" }
yummi = { name: "yummi", address: "5 rue du sushi 75015", category: "french" }

[ dishoom, pizza_east, scwhartz, wokhouse, yummi ].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
