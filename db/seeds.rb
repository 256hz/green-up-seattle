# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# User.destroy_all
# Hood.destroy_all
# Game.destroy_all
# Round.destroy_all
# Waste.destroy_all

user1 = User.create(name: 'Joe', username: 'jyang')
user2 = User.create(name: 'Abe', username: 'ad')

hood1 = Hood.create(name: 'Downtown')
hood2 = Hood.create(name: 'Greenwood')

waste1 = Waste.create(name: 'Banana peel', category: 'compost')
waste2 = Waste.create(name: 'Coffee grounds', category: 'compost')
waste3 = Waste.create(name: 'Chicken bones', category: 'compost')
waste4 = Waste.create(name: 'Tea bags', category: 'compost')
waste5 = Waste.create(name: 'Wooden chopsticks', category: 'compost')
waste6 = Waste.create(name: 'Coffee grounds', category: 'compost')
waste7 = Waste.create(name: 'Carrot tops', category: 'compost')
waste8 = Waste.create(name: 'Eggshells', category: 'compost')

waste9 = Waste.create(name: 'Styrofoam cup', category: 'trash')
waste10 = Waste.create(name: 'Loose soda bottle lid', category: 'trash')
waste11 = Waste.create(name: 'Potato chip bag', category: 'trash')
waste12 = Waste.create(name: 'Candy wrapper', category: 'trash')
waste13 = Waste.create(name: 'Plastic straw', category: 'trash')
waste14 = Waste.create(name: 'Six-pack rings', category: 'trash')

waste15 = Waste.create(name: 'Starbucks coffee lid', category: 'recycling')
waste16 = Waste.create(name: 'Plastic water bottle', category: 'recycling')
waste17 = Waste.create(name: 'Starbucks coffee cup', category: 'recycling')
waste18 = Waste.create(name: 'Soda can', category: 'recycling')
waste19 = Waste.create(name: 'Plastic bags', category: 'recycling')
waste20 = Waste.create(name: 'Wine bottle', category: 'recycling')
