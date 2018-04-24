# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

%w(Ash Gary Misty Brock).each do |name|
  User.create! fName: name, email: name+"@ticketX.com", password: 'password'
end


[['Kygo', 'Berkeley',45], ['The Neighboorhood', 'SF',70], ['Coachella', 'Coachella',100.25], ['Miyavi', 'SF',65.0]].each do |perf, loc, price|
  Event.create!(
    name: perf,
    location: loc,
    performer: perf,
    price: price,
    user: User.find(1)
  )

end