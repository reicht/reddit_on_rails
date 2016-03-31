# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
rand(75..125).times do
  link = Link.create(title: Faker::Hipster.sentence(8, false, 5), link: "#", user_id: rand(1..30))
  rand(1..50).times do
    Like.create(link_id: link.id, user_id: rand(1..30), feels: rand(0..1))

  end

end
