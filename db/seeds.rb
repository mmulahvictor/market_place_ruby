puts "🌱 Seeding spices..."

# Seed your database here

Farmer.create(name: "Victor Mmulah", phone: 254720345673, location: "Kakamega")
Farmer.create(name: "Mark Lumbasi", phone: 254720344756, location: "Nairobi")
Farmer.create(name: "Philip John", phone: 254720342933, location: "Nyeri")

# customer instances
Customer.create(name: "John Smith")
Customer.create(name: "Mary Wanjiku")
Customer.create(name: "Wastalas Kiprop")


# goods instances
Item.create(name: "carrots", image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSZ4vbALMASziiuRwFujXrITo_nHVYg6HjWQ&usqp=CAU", amount: 20, farmer_id: 1 customer_id: 3)
Item.create(name: "beans", image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRi1nFt9szqyo91dWCRdntSXpqbNoWp58eYtw&usqp=CAU", amount: 10, farmer_id: 2, customer_id: 1)
Item.create(name: "maize", image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRSxTtN1z4vYqBiEFoKpqr7a0S5oAEdsgcrKw&usqp=CAU", amount: 6, farmer_id: 3, customer_id: 2)

puts "✅ Done seeding!"
