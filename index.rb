people = [
  "Bianca",
  "Alex",
  "Hiren",
  "Ignacio",
  "Niraj",
  "Louise",
  "Jamie",
  "Ken",
  "Su",
  "Cat",
  "Amrit",
  "Luisa",
  "Emil",
  "Robin"
]

groups = []

puts "Enter number of people in each group as an integer: "
group_size = gets.chomp.to_i

i = 0

while people.length > 0
  groups[i] = []

  puts "i = #{i}"
  
  j = 0
  while j < group_size && people.length > 0
    groups[i] << people.pop

    print "when i is #{i} and j is #{j}, groups = #{groups}\n" 

    j += 1
  end

  i += 1

end

print groups
