# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Hood.destroy_all
Game.destroy_all
Round.destroy_all
Waste.destroy_all

user1 = User.create(name: 'Joe', username: 'jyang')
user2 = User.create(name: 'Abe', username: 'ad')

hood1 = Hood.create(name: 'Downtown')
hood2 = Hood.create(name: 'Greenwood')

waste1 = Waste.create(name: 'Banana peel', category: 'compost')
waste2 = Waste.create(name: 'Styrofoam cup', category: 'trash')
waste3 = Waste.create(name: 'Plastic water bottle', category: 'recycle')
