# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user1 = User.create(name: "Charlie")
user2 = User.create(name: "Abigail")

attraction1 = Attraction.create(name: "Hollywood", address: "123 Hollywood Blvd.", contact_info: "mrhollywood@yahoo.com")
attraction2 = Attraction.create(name: "Lake Tahoe", address: "987 Mountains Rd", contact_info: '' )

review1 = Review.create(content: "This place sucked. Too many mean people.", rating: 1)
review2 = Review.create(content: "Sooooo beautiful!", rating: 5)

city1 = City.create(name: "Los Angeles")
city2 = City.create(name: "Tahoe City")

country1 = Country.create(name: "USA")

country1.cities << [city1, city2]
city1.attractions << [attraction1]
city2.attractions << [attraction2]

attraction1.reviews << [review1]
attraction2.reviews << [review2]

user1.reviews << [review1]
user2.reviews << [review2]


