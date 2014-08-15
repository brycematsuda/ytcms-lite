# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Test admin info
admin = Admin.create(:email => 'admin@example.com', :password => 'password')


# WinDEU Hates You
windeu = Show.create(:name => 'WinDEU Hates You', :position => 1, :visible => 'true')
iroot = Season.create(:name => 'I Ran Out of Titles', :visible => 'true', :show_id => 1, :position => 1, :permalink => 'iroot', :description => "Sixth(?) edition of WinDEU Hates You series. Aenean aliquet tortor id sem pretium sollicitudin. Maecenas diam dui, lobortis rutrum laoreet nec, pharetra vel dolor. Integer et orci felis. Suspendisse hendrerit lacus eu leo viverra, sed dictum sapien blandit.")
lovesu = Season.create(:name =>'Loves You: The Redemption', :visible => 'true', :show_id => 1, :position => 2, :permalink => 'lovesu')
jkitneverends = Season.create(:name =>'Just Kidding, It Never Ends', :visible => 'true', :show_id => 1, :position => 3, :permalink => 'jkitneverends')

iroot1 = Episode.create(:season_id => 1, :name => 'Stage 1', :position => 1, :visible => 'true', :embed_code => '<iframe width="560" height="315" src="//www.youtube.com/embed/QjdBvPWUHiQ?rel=0" frameborder="0" allowfullscreen></iframe>', :description => 'Song: Space Diver Tama')
loves2 = Episode.create(:season_id => 2, :name => 'Stage 2', :position => 2, :visible => 'true', :embed_code => '<iframe width="560" height="315" src="//www.youtube.com/embed/CUXMpAMlSy0?rel=0" frameborder="0" allowfullscreen></iframe>', :description => 'Song: t+pazolite - nekosogi Destruction. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque non diam id neque volutpat pretium. Integer in congue mauris. Maecenas tincidunt nec eros et varius. Etiam eget sodales orci. Donec neque ipsum, imperdiet et ornare id, cursus non nulla. Integer hendrerit semper euismod. In bibendum placerat euismod. Nullam sit amet orci pellentesque, gravida lacus vitae, vehicula odio. Cras vitae volutpat purus. Etiam feugiat nisl vel turpis condimentum laoreet. Curabitur eu dui ut eros accumsan volutpat.

Praesent eu faucibus odio. Vivamus tortor metus, pulvinar at ligula id, iaculis consectetur erat. Vivamus ac laoreet mi. Proin ultricies convallis lectus at molestie. Duis sed mattis nulla. Maecenas dapibus pretium nisl. Phasellus semper vulputate velit at elementum. Aenean eu mauris ac nunc mattis ullamcorper. Cras lacinia, nulla a sollicitudin viverra, velit risus adipiscing sapien, eu posuere mauris turpis convallis magna. Maecenas sit amet tincidunt lacus, sit amet iaculis lectus. Aenean aliquet tortor id sem pretium sollicitudin. Maecenas diam dui, lobortis rutrum laoreet nec, pharetra vel dolor. Integer et orci felis. Suspendisse hendrerit lacus eu leo viverra, sed dictum sapien blandit.

Nulla facilisis felis est, in ultricies sem sodales in. Integer pulvinar porta libero quis adipiscing. Suspendisse sed pretium nisi, sed pretium metus. Nulla fringilla cursus leo sed adipiscing. Aliquam at sapien et erat gravida dictum vitae eu turpis. In nec turpis vel nunc auctor volutpat a et nulla. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Donec nec nisl hendrerit, ultrices neque auctor, tempor felis. Proin orci metus, dictum a erat sit amet, dignissim tristique mauris. Quisque eros nunc, volutpat cursus rutrum vitae, iaculis in nunc. Duis bibendum lacus erat, quis ultricies lorem iaculis non. Praesent pharetra aliquam rutrum. Pellentesque bibendum facilisis dui ut vestibulum.')

jkitneverends3 = Episode.create(:season_id => 3, :name => 'Stage 3 - Mechanical Maze', :position => 3, :visible => 'true', :embed_code => '<iframe width="560" height="315" src="//www.youtube.com/embed/yBF2amXpTks?rel=0" frameborder="0" allowfullscreen></iframe>', :description => 'Song: Makkon - The Little Toy Shop')

jkitneverends5 = Episode.create(:season_id => 3, :name => 'Stage 5 - Story of a Playfield', :position => 5, :visible => 'true', :embed_code => '<iframe width="560" height="315" src="//www.youtube.com/embed/mfhS2KsQNu8?rel=0" frameborder="0" allowfullscreen></iframe>', :description => 'Song: Infected Mushroom - The Messenger 2012.  Vestibulum orci mi, egestas ut nulla et, vulputate condimentum mauris. Fusce dolor dui, fringilla ut dictum vitae, consequat sit amet lorem. Quisque scelerisque leo et dui feugiat tempus. Praesent aliquam arcu lorem, nec pharetra risus condimentum et. Donec pharetra libero ut urna dictum luctus. Suspendisse eget scelerisque massa. Donec sed eros ante. Duis vel felis condimentum, facilisis nisi non, vestibulum tortor. Aenean lacinia quam ut orci tempor, nec mollis arcu lobortis. Sed mollis, odio suscipit faucibus dapibus, quam nulla ullamcorper nisl, ut pharetra orci felis id arcu. Nulla ut congue magna, iaculis bibendum velit. Sed sed libero ut urna sagittis molestie vel quis tellus. Nunc rhoncus nulla ac magna consectetur commodo.

Mauris pellentesque leo quis ligula lobortis fringilla. Fusce pretium turpis et massa sodales rutrum. Aenean luctus malesuada orci ac molestie. Duis et mi dictum, interdum massa et, adipiscing elit. Donec ligula quam, sollicitudin id fringilla quis, sagittis ut augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nam lobortis tincidunt tellus a auctor. Mauris laoreet nunc in ante ultricies gravida. Suspendisse at enim purus.')

# nigahiga
higa = Show.create(:name => 'nigahiga', :position => 2, :visible => 'true')
dearryan = Season.create(:name => 'Dear Ryan', :visible => 'true', :show_id => 2, :position => 1, :permalink => 'dearryan')
epicmealtime = Episode.create(:season_id => 4, :name => 'Dear Ryan - Epic Meal Time', :position => 1, :visible => 'true', :embed_code => '<iframe width="560" height="315" src="//www.youtube.com/embed/4CbnU1cv6rE?rel=0" frameborder="0" allowfullscreen></iframe>', :description => 'Duis ante ligula, sodales vitae sodales nec, accumsan sed magna. Pellentesque ornare feugiat nulla, non dictum erat. Donec eleifend, nulla eget tristique ornare, ante nisi gravida metus, quis convallis erat tellus eu odio. Sed tincidunt tempus imperdiet. Duis mi tellus, bibendum hendrerit turpis non, dictum consectetur tellus. Nunc convallis vel urna vitae ullamcorper. Sed tincidunt commodo ultrices.

Vestibulum quis tellus et dui tincidunt mollis at sit amet neque. Pellentesque interdum sit amet est ac scelerisque. Quisque dapibus aliquam ante, id posuere lorem vehicula quis. Sed tincidunt augue in justo blandit, ut fermentum augue venenatis. Nam faucibus tellus vel dolor tempor, ac placerat sapien egestas. Nam varius hendrerit leo. Vivamus sit amet enim pretium, scelerisque tortor quis, aliquam turpis. Nulla at gravida mi. Maecenas eget urna consectetur, accumsan erat sit amet, accumsan elit. Aliquam tincidunt purus ac ligula dignissim, a pretium nisi vestibulum. Suspendisse tempus convallis libero, non aliquam dui tempus nec. Vestibulum ornare turpis a nunc ultricies tincidunt. Nulla enim dolor, facilisis eget convallis vel, interdum eu orci.')

extreme = Episode.create(:season_id => 4, :name => 'Dear Ryan - Extreme', :position => 2, :visible => 'true', :embed_code => '<iframe width="560" height="315" src="//www.youtube.com/embed/Gvlofs2W124?rel=0" frameborder="0" allowfullscreen></iframe>', :description => 'Duis ante ligula, sodales vitae sodales nec, accumsan sed magna. Pellentesque ornare feugiat nulla, non dictum erat. Donec eleifend, nulla eget tristique ornare, ante nisi gravida metus, quis convallis erat tellus eu odio. Sed tincidunt tempus imperdiet. Duis mi tellus, bibendum hendrerit turpis non, dictum consectetur tellus. Nunc convallis vel urna vitae ullamcorper. Sed tincidunt commodo ultrices.')
