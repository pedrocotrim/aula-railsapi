# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Manufacturer.create(name: "Honda")
Manufacturer.create(name: "Toyota")
Manufacturer.create(name: "Acura")
Manufacturer.create(name: "Nissan")
Manufacturer.create(name: "Subaru")

sale = 5000000
day = 50000
month = (day * 30) * 0,9
year = (month * 12) * 0,8
qty = 50
Car.create(model: "Civic", sale_price: sale, day_price: day, month_price: month, year_price: year, quantity: qty, manufacturer_id: 1)
Car.create(model: "Civic", sale_price: sale, day_price: day, month_price: month, year_price: year, quantity: qty, manufacturer_id: 2)
Car.create(model: "Civic", sale_price: sale, day_price: day, month_price: month, year_price: year, quantity: qty, manufacturer_id: 3)
Car.create(model: "Civic", sale_price: sale, day_price: day, month_price: month, year_price: year, quantity: qty, manufacturer_id: 4)
Car.create(model: "Civic", sale_price: sale, day_price: day, month_price: month, year_price: year, quantity: qty, manufacturer_id: 5)