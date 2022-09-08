puts "🌱 Seeding plants and buyers..."

5.times do 
    buyer = Buyer.create(
        name: Faker::Name.name,
        contact: Faker::Number.number,
        feedback: Faker::Emotion.noun
    )
end

puts "✅ Done seeding!"
