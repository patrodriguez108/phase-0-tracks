# write out hash
form = {
  name: "",
  age: "",
  kids: "",
  decor: "",
  pets: ""
}

# prompt user
puts "Name"
form[:name] = gets.chomp
puts "Age"
form[:age] = gets.chomp
# convert to integer
  form[:age].to_i
puts "Number of children"
form[:kids] = gets.chomp
# convert to integer
  form[:kids].to_i
puts "Decor theme"
form[:decor] = gets.chomp
puts "Do you own any pets?"
form[:pets] = gets.chomp
# convert to boolean
  case form[:pets]
    when 'yes', 'Yes', 'y', 'Y'
      form[:pets] = true
    when 'no', 'No', 'n', 'N'
      form[:pets] = false
  end

# print hash
p form