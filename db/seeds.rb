# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require 'faraday'

# conn = Faraday.new(url: 'http://fastapi-app-url.com')
# response = conn.get('/api/data')

response = Faraday.get('http://fastapi-app-url.com')

puts response.body
require 'faraday'
require 'json'

conn = Faraday.new(url: 'http://fastapi-app-url.com')
response = conn.get('/api/data')

parsed_response = JSON.parse(response.body)

puts parsed_response['data']
