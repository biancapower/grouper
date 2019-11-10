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
  #"Luisa",
  #"Emil",
  # "Robin"
]

# initialise empty array to store groups in
groups = []






####################################################################
# calculate group sizes that will result in evenly numbered groups #
####################################################################

ideal_group_sizes = []
almost_ideal_group_sizes = []

(2...people.length).each do | num | # purposely excludes groups of 1 or only 1 group
  result =  people.length % num

  if result == 0
    ideal_group_sizes << num
  elsif result == num - 1
    almost_ideal_group_sizes << num
  end

end

if !ideal_group_sizes.empty?
  puts "For even groups, your options for number of people per group are: #{ideal_group_sizes}"
  puts "You could also come close to even with these options: #{almost_ideal_group_sizes}"
elsif !almost_ideal_group_sizes.empty?
  puts "It's impossible to get evenly sized groups for that number of people, but you can come close with the following number of people per group: #{almost_ideal_group_sizes}"
else
  puts "Sorry... but I can't recommend a good group size"
end


##################################
# handle group size and creation #
##################################

# ask for group size and store in group_size
puts "Enter number of people in each group as an integer: "
group_size = gets.chomp.to_i

i = 0

while !people.empty?

  groups[i] = []

  j = 0
  while j < group_size && !people.empty?
    groups[i] << people.pop

    # print "when i is #{i} and j is #{j}, groups = #{groups}\n" 

    j += 1
  end

  i += 1

end

for group in groups
  print group
  puts
end
