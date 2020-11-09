# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'httparty'
twice = Artist.create(name: 'Twice')
request = HTTParty.get("http://ws.audioscrobbler.com/2.0/?method=artist.gettoptracks&artist=TWICE&api_key=#{Rails.application.secrets.APIKEY}&format=json&limit=10").to_json
JSON.parse(request)['toptracks']['track'].each do |track|
  twice.songs.create(title: track['name'])
end
iu = Artist.create(name: 'IU')
request = HTTParty.get("http://ws.audioscrobbler.com/2.0/?method=artist.gettoptracks&artist=IU&api_key=#{Rails.application.secrets.APIKEY}&format=json&limit=10").to_json
JSON.parse(request)['toptracks']['track'].each do |track|
  iu.songs.create(title: track['name'])
end
bibi = Artist.create(name: 'BIBI')
request = HTTParty.get("http://ws.audioscrobbler.com/2.0/?method=artist.gettoptracks&artist=BIBI&api_key=#{Rails.application.secrets.APIKEY}&format=json&limit=10").to_json
JSON.parse(request)['toptracks']['track'].each do |track|
  bibi.songs.create(title: track['name'])
end