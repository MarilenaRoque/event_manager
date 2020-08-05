require "csv"
puts 'Event Manager Initialized'

content = CSV.open "../data.csv", headers: true, header_converters: :symbol
content.each{ |count|
  zip = count[:zipcode].to_s
  zip = "0" + zip until zip.length == 5
  puts "Guest: #{count[:first_name]} Zip Code: #{zip}"
}
