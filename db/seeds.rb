# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Artist.destroy_all
Song.destroy_all

a = Artist.create(name: "Betty")
b = Artist.create(name: "George")

Song.create(title: "Oh Baby",artist_id: a.id)
Song.create(title: "Pajama Jams",artist_id: a.id)
Song.create(title: "Doggie Dood",artist_id: b.id)
Song.create(title: "My lamp",artist_id: b.id)

puts "done seeding"