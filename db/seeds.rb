puts "🌱 Seeding plants, buyers and purchases..."

# Seeding 5 indoor plants

Plant.create(name: "Monstera", species: "Monstera adansonii", best_climate: "Cool and wet climate", water_frequency: "Once a week", no_in_stock: 5, image: "https://cdn.standardmedia.co.ke/images/monday/mrgzearkbazgdw4w621cc47da68d7.jpg")
Plant.create(name: "Money Plant", species: "Epipremnum aureum", best_climate: "Cool and wet climate", water_frequency: "Once a week", no_in_stock: 10, image: "https://indiagardening.com/wp-content/uploads/2021/05/MONEY-PLANT-BUSHY.jpg")
Plant.create(name: "Ghost Plant", species: "Monotropa uniflora", best_climate: "Cool and dry", water_frequency: "Once in 2 weeks", no_in_stock: 2, image: "https://www.thespruce.com/thmb/431eRmkyTp30v50o9Az_lxLMbHo=/1578x1052/filters:fill(auto,1)/ghost-plant-succulent-care-and-growing-guide-4684220-closeup-d95cba766e024dbb80be3dbb1e6b70b7.jpg")
Plant.create(name: "Peace Lily", species: "Spathiphyllum", best_climate: "Cool and humid", water_frequency: "Once a week", no_in_stock: 20, image: "https://hips.hearstapps.com/hmg-prod/images/peace-lilies-royalty-free-image-1644536388.jpg")
Plant.create(name: "Cactus", species: "Astrophytum asterias", best_climate: "hot and dry", water_frequency: "Once a month", no_in_stock: 7, image: "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/cactus-plant-pot-stand-1599155636.jpg?crop=1.00xw:0.753xh;0,0.108xh&resize=1200:*")

# Add the plant ids to an array
$plant_ids = Plant.all.map { |plant| plant[:id] } 

# Use Faker to seed 5 Buyers
# Faker doesn't work on heroku. Uncomment the code below to seed development db

# 5.times do 
#     buyer = Buyer.create(
#         name: Faker::Name.name,
#         contact: Faker::Number.number,
#         feedback: Faker::Lorem.sentence
#     )

#     # Create between 1 and 3 purchases for each buyer for a random plant
#     rand(1..3).times do 
#         Purchase.create(
#             plant_id: $plant_ids.sample,
#             buyer_id: buyer.id,
#             cost: rand(500..3000)
#         )
#     end 
# end

Buyer.create(name: "St. Augustine", contact: 788998858, feedback: "Healthy plants as always.")
Buyer.create(name: "Jane Wairimu", contact: 737894536, feedback: "Love the customer service!")
Buyer.create(name: "Christiano Ronaldo", contact: 722000000, feedback: "Highly recommend.")
Buyer.create(name: "Peter Pan", contact: 111111111, feedback: "The Monstera took a while to adapt.")
Buyer.create(name: "Muthoki Gichuki", contact: 769100100, feedback: "Aaah! I just love the plants! Love!")

# Add the buyer ids to an array
$buyers_ids = Buyer.all.map { |buyer| buyer[:id] } 


Purchase.create(plant_id: $plant_ids.sample, buyer_id: $buyers_ids.sample, cost: rand(500..3000))
Purchase.create(plant_id: $plant_ids.sample, buyer_id: $buyers_ids.sample, cost: rand(500..3000))
Purchase.create(plant_id: $plant_ids.sample, buyer_id: $buyers_ids.sample, cost: rand(500..3000))
Purchase.create(plant_id: $plant_ids.sample, buyer_id: $buyers_ids.sample, cost: rand(500..3000))
Purchase.create(plant_id: $plant_ids.sample, buyer_id: $buyers_ids.sample, cost: rand(500..3000))
Purchase.create(plant_id: $plant_ids.sample, buyer_id: $buyers_ids.sample, cost: rand(500..3000))


puts "✅ Done seeding!"
