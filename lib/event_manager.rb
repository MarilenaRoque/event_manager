require "csv"
puts 'Event Manager Initialized'

content = CSV.open "../data.csv", headers: true, header_converters: :symbol
content.each{ |count|
  name = count[:last_name]
  puts name
}