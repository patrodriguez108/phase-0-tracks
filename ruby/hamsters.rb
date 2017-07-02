puts "What is the hamster's name?"

name = gets.chomp

p "Aww! #{name} is a cute name :)"

puts "What is the volume of hamster squeakage? (scale of 1-10)"

squeak = gets.chomp
  squeak = squeak.to_i

p "#{squeak} is just the perfect amount of squeakage!"

puts "What is the color of the hamster's fur?"

color = gets.chomp

p "Well #{color} just adds to the colorful world we live in!"

puts "Is the hamster worthy of adoption?"

adopt = gets.chomp
  def true?(obj)
    obj.to_s == "true"
  end

p "Okay, #{adopt}. We will keep that in mind!"

puts "What is the estimate age of the hamster?"

age = gets.strip
  if age.empty?
    age = nil
  else
    age = age.to_i
  end

p "#{age}! I feel wisdom radiating from this ham!"