# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

artist = Artist.create!(name: "Johnny Cash")
artist.songs.create!(title: "one million dollars")
artist.songs.create!(title: "I own you one")
artist.songs.create!(title: "come one baby")
