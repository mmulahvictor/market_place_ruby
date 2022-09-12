puts "🌱 Seeding spices..."

# Seed your database here

Farmer.create(name: "Victor Mmulah", phone: 720345673, location: "Kakamega")
Farmer.create(name: "Mark Lumbasi", phone: 720344756, location: "Nairobi")
Farmer.create(name: "Philip John", phone: 720342933, location: "Nyeri")

# customer instances
Customer.create(name: "John Smith")
Customer.create(name: "Mary Wanjiku")
Customer.create(name: "Wastalas Kiprop")


# goods instances
Item.create(name: "carrots", image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSZ4vbALMASziiuRwFujXrITo_nHVYg6HjWQ&usqp=CAU", amount: 20, farmer_id: 1, customer_id: 1)


puts "✅ Done seeding!"
