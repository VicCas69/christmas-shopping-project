puts "🌱 Seeding spices..."

# Seed your database here

Relative.create(name:"Victor", relationship: "Cousin" )
Relative.create(name:"Ricardo", relationship: "Brother" )
Relative.create(name:"Suleidy", relationship: "Sister" )
Relative.create(name:"Barbara", relationship: "Mother" )
Relative.create(name:"Abraham", relationship: "Father" )

Gift.create(description: "Flowers bouquet", price: 100, color: "white and red", relative_id: 3)
Gift.create(description: "Watch", price: 150, color: "silver", relative_id: 1)
Gift.create(description: "Washing machine", price: 300, color: "gray", relative_id: 4)
Gift.create(description: "Gym equipment", price: 200, color: "black", relative_id: 2)
Gift.create(description: "Sunglasses", price: 50, color: "black", relative_id: 1)

puts "✅ Done seeding!"
