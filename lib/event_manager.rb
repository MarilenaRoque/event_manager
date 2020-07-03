puts "Event Manager Initialized"
fd = IO.sysopen("../data.csv", "r")
puts fd
marilena = IO.new(fd)
content = marilena.readlines
columns = []
content.each{ |line|
  columns = line.split(",")
  puts columns[2]
}