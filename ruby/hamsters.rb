puts "What is the hamster's name?"

name = gets.chomp


puts "What is the volume of hamster squeakage? (scale of 1-10)"

squeak = gets.chomp


puts "What is the color of the hamster's fur?"

color = gets.chomp


puts "Is the hamster worthy of adoption?"

adopt = gets.chomp


puts "What is the estimate age of the hamster?"

age = gets.strip
  if age.empty?
    age = nil
  else
    age = age.to_i
  end