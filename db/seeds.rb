puts "🌱 Seeding spices..."

# Seed your database here


# farmers instances
farmer1 = Farmer.create(name: "Victor Mmulah")
farmer2 = Farmer.create(name: "Mark Lumbasi")
farmer3 = Farmer.create(name: "Philip John")

# customer instances
customer1 = Customer.create(name: "John Smith")
customer2 = Customer.create(name: "Mary Wanjiku")
customer3 = Customer.create(name: "Wastalas Kiprop")


# goods instances
item1 = Good.create(name: "carrots", amount: 20, farmer_id: farmer1.id, customer_id: customer3.id)
item2 = Good.create(name: "beans", amount: 10, farmer_id: farmer2.id, customer_id: customer1.id)
item3 = Good.create(name: "maize", amount: 6, farmer_id: farmer3.id, customer_id: customer2.id)

puts "✅ Done seeding!"
