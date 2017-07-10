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