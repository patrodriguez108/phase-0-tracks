# write out method scope
def spy(name)
# split first and last name
  name = name.split
# switch first and last name
  name.reverse
# join name
  swap = name.reverse
  swap.join
  switch = swap.join
# write out method that moves vowels
  vowels = ["a", "e", "i", "o", "u"]
  switch = switch.split('')
  name_new = switch.map do |char|
    if vowels.include?(char)
      vowels.rotate(1)[vowels.index(char)]
    else
# move consonants
      char.next
    end
  end
  name_new.join
# end method
end

puts spy("Hector Fernandez")

# write out empty hash
spy_names = {
  name: "",
  spy: ""
}

loop_counter = 0

loop do
  puts "Enter your name (Type DONE when done)"
  name = gets.chomp
  if name == "DONE"
    puts "Thank you. Your service is important"
    break
  else
    puts spy(name)
  end
  loop_counter += 1
end

# print out hash
spy_names.each do |name, spy|
  puts "#{name} is known internationally as #{spy}"
end