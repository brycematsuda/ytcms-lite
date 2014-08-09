# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

admin = Admin.create(:email => 'admin@example.com', :password => 'password')
show = Show.create(:name => 'WinDEU Hates You', :visible => 'true')
season = Season.create(:name => 'I Ran Out of Titles', :visible => 'true', :show_id => 1, :position => 1)
episode = Episode.create(:season_id => 1, :name => 'Stage 1', :position => 1, :visible => 'true', :content_type => 'text', :content => 'https://www.youtube.com/watch?v=QjdBvPWUHiQ', :description => 'Song: Space Diver Tama')