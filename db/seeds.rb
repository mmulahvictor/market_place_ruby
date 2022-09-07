puts "🌱 Seeding spices..."

# Seed your database here


# farmers instances
farmer1 = Farmer.create(name: "Victor Mmulah", phone: 254720345673, location: "Kakamega")
farmer2 = Farmer.create(name: "Mark Lumbasi", phone: 254720344756, location: "Nairobi")
farmer3 = Farmer.create(name: "Philip John", phone: 254720342933, location: "Nyeri")

# customer instances
customer1 = Customer.create(name: "John Smith")
customer2 = Customer.create(name: "Mary Wanjiku")
customer3 = Customer.create(name: "Wastalas Kiprop")


# goods instances
item1 = Item.create(name: "carrots", image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSZ4vbALMASziiuRwFujXrITo_nHVYg6HjWQ&usqp=CAU", amount: 20, farmer_id: farmer1.id, customer_id: customer3.id)
item2 = Item.create(name: "beans", image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRi1nFt9szqyo91dWCRdntSXpqbNoWp58eYtw&usqp=CAU", amount: 10, farmer_id: farmer2.id, customer_id: customer1.id)
item3 = Item.create(name: "maize", image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRSxTtN1z4vYqBiEFoKpqr7a0S5oAEdsgcrKw&usqp=CAU", amount: 6, farmer_id: farmer3.id, customer_id: customer2.id)

puts "✅ Done seeding!"
