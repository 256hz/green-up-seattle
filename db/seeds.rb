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

hood1_north   = Hood.create!(name: 'North Seattle Nightmares', hood_score: 300)
hood2_ballard = Hood.create(name: 'Ballard Brigade',           hood_score: 120)
hood3_udub    = Hood.create(name: 'U District Undertakers',    hood_score: 50)
hood4_mag     = Hood.create(name: 'Queen Anne Quasars',        hood_score: 130)
hood5_cap     = Hood.create(name: 'Cap Hill Crushers',         hood_score: 150)
hood6_down    = Hood.create(name: 'Downtown Dragons',          hood_score: 140)
hood7_east    = Hood.create(name: 'East Seattle Endgame',      hood_score: 100)
hood8_west    = Hood.create(name: 'West Seattle Wahoos',       hood_score: 80)
hood9_south   = Hood.create(name: 'South Seattle Strikers',    hood_score: 180)
hood10_ferry  = Hood.create(name: 'Ferocious Ferryriders',     hood_score: 270)

SubHood.create!(hood_id: hood1_north.id,  name: 'Bitter lake')
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
SubHood.create(hood_id: hood10_ferry.id,  name: 'Vashon')

user1 = User.create!(name: 'Joe Y.', username: 'joe', hood_id: hood1_north.id, password: 'joe', password_confirmation: 'joe')
user2 = User.create(name: 'Abe D.', username: 'abe', hood_id: hood10_ferry.id, password: 'abe', password_confirmation: 'abe')
user3 = User.create(name: 'Mera S.', username: 'mera', hood_id: hood5_cap.id, password: 'mera', password_confirmation: 'mera')
user4 = User.create(name: 'Rylan B.', username: 'rylan', hood_id: hood9_south.id, password: 'rylan', password_confirmation: 'rylan')
user5 = User.create(name: 'Jon L.', username: 'jon', hood_id: hood4_mag.id, password: 'jon', password_confirmation: 'jon')
user6 = User.create(name: 'Doug W.', username: 'doug', hood_id: hood2_ballard.id, password: 'doug', password_confirmation: 'doug')
user7 = User.create(name: 'Quinn C.', username: 'quinn', hood_id: hood8_west.id, password: 'quinn', password_confirmation: 'quinn')
user8 = User.create(name: 'Sofia J.', username: 'sofia', hood_id: hood7_east.id, password: 'sofia', password_confirmation: 'sofia')

game1 = Game.create

dir_files = []
root = "public/images"
folders = ['trash', 'compost', 'recycling']
folders.each do |folder|
  Dir.foreach(root+"/"+folder) do |file|
    next if file == '.' or file == '..' or file == '.DS_Store'
    file_attrs={}
    file_attrs[:category] = folder
    file_attrs[:path] = "/images/#{folder}/#{file}"
    file_attrs[:title] = file.sub(".png", "").gsub(/(\d)+/, "").gsub("-", " ").strip
    Waste.create!(name: file_attrs[:title], category: file_attrs[:category], img_url: file_attrs[:path])
  end
end
