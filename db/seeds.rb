# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

admin = Admin.create(:email => 'admin@example.com', :password => 'password')

windeu = Show.create(:name => 'WinDEU Hates You', :visible => 'true')
iroot = Season.create(:name => 'I Ran Out of Titles', :visible => 'true', :show_id => 1, :position => 1, :permalink => 'iroot')
lovesu = Season.create(:name =>'Loves You: The Redemption', :visible => 'true', :show_id => 1, :position => 2, :permalink => 'lovesu')
jkitneverends = Season.create(:name =>'Just Kidding, It Never Ends', :visible => 'true', :show_id => 1, :position => 3, :permalink => 'jkitneverends')

iroot1 = Episode.create(:season_id => 1, :name => 'Stage 1', :position => 1, :visible => 'true', :content_type => 'text', :content => '<iframe width="560" height="315" src="//www.youtube.com/embed/QjdBvPWUHiQ?rel=0" frameborder="0" allowfullscreen></iframe>', :description => 'Song: Space Diver Tama')
loves2 = Episode.create(:season_id => 2, :name => 'Stage 2', :position => 2, :visible => 'true', :content_type => 'text', :content => '<iframe width="560" height="315" src="//www.youtube.com/embed/CUXMpAMlSy0?rel=0" frameborder="0" allowfullscreen></iframe>', :description => 'Song: t+pazolite - nekosogi Destruction')
jkitneverends3 = Episode.create(:season_id => 3, :name => 'Stage 3 - Mechanical Maze', :position => 3, :visible => 'true', :content_type => 'text', :content => '<iframe width="560" height="315" src="//www.youtube.com/embed/yBF2amXpTks?rel=0" frameborder="0" allowfullscreen></iframe>', :description => 'Song: Makkon - The Little Toy Shop')