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

hood1_north   = Hood.create!(name: 'North Seattle Nightmares', hood_score: 0)
hood2_ballard = Hood.create(name: 'Ballard Brigade',           hood_score: 0)
hood3_udub    = Hood.create(name: 'U District Undertakers',    hood_score: 0)
hood4_mag     = Hood.create(name: 'The Magical MagInQueens',   hood_score: 0)
hood5_cap     = Hood.create(name: 'Cap Hill Crushers',         hood_score: 0)
hood6_down    = Hood.create(name: 'Downtown Dragons',          hood_score: 0)
hood7_east    = Hood.create(name: 'East Seattle Endgame',      hood_score: 0)
hood8_west    = Hood.create(name: 'West Seattle Wahoos',       hood_score: 0)
hood9_south   = Hood.create(name: 'South Seattle Strikers',    hood_score: 0)
hood10_ferry  = Hood.create(name: 'Ferocious Ferryriders',     hood_score: 0)

SubHood.create!(hood_id: hood1_north.id,   name: 'Bitter lake')
SubHood.create(hood_id: hood1_north.id,   name: 'Broadview')
SubHood.create(hood_id: hood1_north.id,   name: 'Haller lake')
SubHood.create(hood_id: hood1_north.id,   name: 'Pinehurst')
SubHood.create(hood_id: hood1_north.id,   name: 'Northgate')
SubHood.create(hood_id: hood1_north.id,   name: 'Olympic hill')
SubHood.create(hood_id: hood1_north.id,   name: 'Cedarpoint        '.strip)
SubHood.create(hood_id: hood1_north.id,   name: 'Victory Heights   '.strip)
SubHood.create(hood_id: hood1_north.id,   name: 'Lake City         '.strip)
SubHood.create(hood_id: hood1_north.id,   name: 'Matthew\'s Beach  '.strip)
SubHood.create(hood_id: hood1_north.id,   name: 'North Beach       '.strip)
SubHood.create(hood_id: hood1_north.id,   name: 'Blue Ridge        '.strip)
SubHood.create(hood_id: hood1_north.id,   name: 'Crown Hill        '.strip)
SubHood.create(hood_id: hood1_north.id,   name: 'Greenwood         '.strip)
SubHood.create(hood_id: hood1_north.id,   name: 'North College Park')
SubHood.create(hood_id: hood1_north.id,   name: 'Maple Leaf        '.strip)

SubHood.create(hood_id: hood2_ballard.id, name: 'Ballard')
SubHood.create(hood_id: hood2_ballard.id, name: 'Fremont')
SubHood.create(hood_id: hood2_ballard.id, name: 'Phinney Ridge')

SubHood.create(hood_id: hood3_udub.id,    name: 'Wedgewood          '.strip)
SubHood.create(hood_id: hood3_udub.id,    name: 'Green Lake         '.strip)
SubHood.create(hood_id: hood3_udub.id,    name: 'Roosevelt          '.strip)
SubHood.create(hood_id: hood3_udub.id,    name: 'View Ridge         '.strip)
SubHood.create(hood_id: hood3_udub.id,    name: 'Sandy point        '.strip)
SubHood.create(hood_id: hood3_udub.id,    name: 'Windermere         '.strip)
SubHood.create(hood_id: hood3_udub.id,    name: 'Bryant             '.strip)
SubHood.create(hood_id: hood3_udub.id,    name: 'Ravenna            '.strip)
SubHood.create(hood_id: hood3_udub.id,    name: 'Laurelhurst        '.strip)
SubHood.create(hood_id: hood3_udub.id,    name: 'University District'.strip)
SubHood.create(hood_id: hood3_udub.id,    name: 'Wallingford        '.strip)

SubHood.create(hood_id: hood4_mag.id,     name: 'Magnolia')
SubHood.create(hood_id: hood4_mag.id,     name: 'Interbay')
SubHood.create(hood_id: hood4_mag.id,     name: 'Queen Anne')

SubHood.create(hood_id: hood5_cap.id,     name: 'Eastlake    '.strip)
SubHood.create(hood_id: hood5_cap.id,     name: 'Montlake    '.strip)
SubHood.create(hood_id: hood5_cap.id,     name: 'Capitol Hill'.strip)
SubHood.create(hood_id: hood5_cap.id,     name: 'Madison Park'.strip)

SubHood.create(hood_id: hood6_down.id,    name: 'Westlake              '.strip)
SubHood.create(hood_id: hood6_down.id,    name: 'Cascade               '.strip)
SubHood.create(hood_id: hood6_down.id,    name: 'Belltown              '.strip)
SubHood.create(hood_id: hood6_down.id,    name: 'Downtown              '.strip)
SubHood.create(hood_id: hood6_down.id,    name: 'Pioneer Square        '.strip)
SubHood.create(hood_id: hood6_down.id,    name: 'International District'.strip)

SubHood.create(hood_id: hood7_east.id,    name: 'Central Area'.strip)
SubHood.create(hood_id: hood7_east.id,    name: 'Madrona     '.strip)
SubHood.create(hood_id: hood7_east.id,    name: 'Leschi      '.strip)

SubHood.create(hood_id: hood8_west.id,    name: 'Alki Beach  '.strip)
SubHood.create(hood_id: hood8_west.id,    name: 'West Seattle'.strip)
SubHood.create(hood_id: hood8_west.id,    name: 'Delridge    '.strip)

SubHood.create(hood_id: hood9_south.id,   name: 'Harbor Island    '.strip)
SubHood.create(hood_id: hood9_south.id,   name: 'Sodo             '.strip)
SubHood.create(hood_id: hood9_south.id,   name: 'Georgetown       '.strip)
SubHood.create(hood_id: hood9_south.id,   name: 'Southpark        '.strip)
SubHood.create(hood_id: hood9_south.id,   name: 'Beacon Hill      '.strip)
SubHood.create(hood_id: hood9_south.id,   name: 'North Beacon Hill'.strip)
SubHood.create(hood_id: hood9_south.id,   name: 'Brighton         '.strip)
SubHood.create(hood_id: hood9_south.id,   name: 'Rainier Valley   '.strip)
SubHood.create(hood_id: hood9_south.id,   name: 'Seward Park      '.strip)
SubHood.create(hood_id: hood9_south.id,   name: 'South Beacon Hill'.strip)
SubHood.create(hood_id: hood9_south.id,   name: 'Rainier Beach    '.strip)

SubHood.create(hood_id: hood10_ferry.id,  name: 'Bainbridge')
SubHood.create(hood_id: hood10_ferry.id,  name: 'Bremerton')


user1 = User.create!(name: 'Joe', username: 'jyang', hood_id: hood1_north.id, password: 'joe')
user2 = User.create(name: 'Abe', username: 'ad',    hood_id: hood10_ferry.id, password: 'abe')

game1 = Game.create

waste1  = Waste.create!(name: 'Banana peel',          category: 'compost')
waste2  = Waste.create(name: 'Coffee grounds',        category: 'compost')
waste3  = Waste.create(name: 'Tea bags',              category: 'compost')
waste4  = Waste.create(name: 'Wooden chopsticks',     category: 'compost')
waste5  = Waste.create(name: 'Coffee grounds',        category: 'compost')
waste6  = Waste.create(name: 'Carrot tops',           category: 'compost')
waste7  = Waste.create(name: 'Eggshells',             category: 'compost')

waste8  = Waste.create(name: 'Chicken bones',         category: 'trash')
waste9  = Waste.create(name: 'Styrofoam cup',         category: 'trash')
waste10 = Waste.create(name: 'Loose soda bottle lid', category: 'trash')
waste11 = Waste.create(name: 'Potato chip bag',       category: 'trash')
waste12 = Waste.create(name: 'Candy wrapper',         category: 'trash')
waste13 = Waste.create(name: 'Plastic straw',         category: 'trash')
waste14 = Waste.create(name: 'Six-pack rings',        category: 'trash')

waste15 = Waste.create(name: 'Starbucks coffee lid',  category: 'recycling')
waste16 = Waste.create(name: 'Plastic water bottle',  category: 'recycling')
waste17 = Waste.create(name: 'Starbucks coffee cup',  category: 'recycling')
waste18 = Waste.create(name: 'Soda can',              category: 'recycling')
waste19 = Waste.create(name: 'Plastic bags',          category: 'recycling')
waste20 = Waste.create(name: 'Wine bottle',           category: 'recycling')
