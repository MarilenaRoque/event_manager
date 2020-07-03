require "csv"
puts 'Event Manager Initialized'

content = CSV.open "../data.csv", headers: true
content.each{ |count|
  name = count[2]
  puts name
}