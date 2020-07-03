puts "Event Manager Initialized"
fd = IO.sysopen("../data.csv", "r")
puts fd
marilena = IO.new(fd)
content = marilena.readlines
columns = []
content.length.times.each{ |count|
  next if count.zero?
  columns = content[count].split(",")
  puts columns[2]
}