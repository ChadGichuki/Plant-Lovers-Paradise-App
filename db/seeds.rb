puts "🌱 Seeding plants, buyers and purchases..."

# Seeding 5 indoor plants

Plant.create(name: "Monstera", species: "Monstera adansonii", best_climate: "Cool and wet climate", water_frequency: "Once a week", no_in_stock: 5, image: "https://commons.wikimedia.org/wiki/File:MonsteraAdansonii.jpg#/media/File:MonsteraAdansonii.jpg")
Plant.create(name: "Money Plant", species: "Epipremnum aureum", best_climate: "Cool and wet climate", water_frequency: "Once a week", no_in_stock: 10, image: "https://commons.wikimedia.org/wiki/File:Epipremnum_aureum_31082012.jpg#/media/File:Epipremnum_aureum_31082012.jpg")
Plant.create(name: "Ghost Plant", species: "Monotropa uniflora", best_climate: "Cool and dry", water_frequency: "Once in 2 weeks", no_in_stock: 2, image: "https://commons.wikimedia.org/wiki/File:Indian_pipe_PDB.JPG#/media/File:Indian_pipe_PDB.JPG")
Plant.create(name: "Peace Lily", species: "Spathiphyllum", best_climate: "Cool and humid", water_frequency: "Once a week", no_in_stock: 20, image: "https://commons.wikimedia.org/wiki/File:Spathiphyllum_cochlearispathum_RTBG.jpg#/media/File:Spathiphyllum_cochlearispathum_RTBG.jpg")
Plant.create(name: "Cactus", species: "Astrophytum asterias", best_climate: "hot and dry", water_frequency: "Once a month", no_in_stock: 7, image: "https://commons.wikimedia.org/wiki/File:Astrophytum_asterias1.jpg#/media/File:Astrophytum_asterias1.jpg")

# Add the plant ids to an array
$plant_ids = Plant.all.map { |plant| plant[:id] } 

# Use Faker to seed 5 Buyers
5.times do 
    buyer = Buyer.create(
        name: Faker::Name.name,
        contact: Faker::Number.number,
        feedback: Faker::Lorem.sentence
    )

    # Create between 1 and 3 purchases for each buyer for a random plant
    rand(1..3).times do 
        Purchase.create(
            plant_id: $plant_ids.sample,
            buyer_id: buyer.id,
            cost: rand(500..3000)
        )
    end 
end




puts "✅ Done seeding!"
