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



puts "✅ Done seeding!"
