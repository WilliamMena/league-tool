# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(username: "william", password: 'password', email: 'test@test.com', first_name: 'William', last_name: "Mena", phone_number: "646-548-8007")

User.create(username: "rocio", password: 'password', email: 'test@test.com', first_name: 'Rocio', last_name: "Jimenez")

league = League.create(name: "Sandlot")

season1 = Season.create(name: "Winter 2018", league: league)

bar1 = Bar.create(name: "First Bar", address: "101 Test Drive")
bar2 = Bar.create(name: "Second Bar", address: "102 Test Drive")

gym1 = Gym.create(name: "Gym one", email: "Test@test.com")
gym2 = Gym.create(name: "Gym two", email: "Test@test.com")

location1 = Location.create(gym: gym1, bar: bar1)
location1 = Location.create(gym: gym2, bar: bar2)

team1 = Team.create(name: "Pink Squad", color: "Pink")
team2 = Team.create(name: "Black Squad", color: "Black")

team3 = Team.create(name: "Red Squad", color: "Red")
team4 = Team.create(name: "Purple Squad", color: "Purple")

game1 = Game.create(team_1_id: team1, team_2_id: team2)
game2 = Game.create(team_1_id: team3, team_2_id: team1)

event1 = Event.create(date: Time.now, location: location1, season: season1, bar_game: "Flip Cup")
