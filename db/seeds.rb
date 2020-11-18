# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

ciara = Artist.create!(name: "Ciara")
ciara.songs.create!(title: "And I")
ciara.songs.create!(title: "Promise Ring")

mariah = Artist.create!(name: "Mariah")
mariah.songs.create!(title: "We Belong Together")
mariah.songs.create!(title: "Alway Be My Baby")


