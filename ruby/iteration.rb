# write out method scope
def hogwarts
  name1 = "Parvati"
  name2 = "Padme"
  puts "Welcome to Hogwarts!"
  yield(name1, name2)
end

# write out block
hogwarts { |name1, name2| puts "Please come to the Great Hall #{name1} and #{name2}!" }

# write out array
professors = ['mcgonagall', 'dumbledore', 'flitwick', 'snape', 'lupin']
new_list = []

# print original array

puts "Orignal list"
p professors

# iterate through array using .each

professors.each do |faculty|
  new_list << faculty.upcase
end

# print array after .each

puts "Official List of Faculty!"
p new_list

# iterate through through array using .map!
professors.map! do |staff|
  staff.reverse
end

# print array after .map!

puts "Night Shift List"
p professors

# write out hash
classes = {mcgonagall: 'transfiguration', flitwick: 'charms', snape: 'potions', lupin: 'dada'}

# iterate through hash using .each
classes.each do |teacher, course|
  puts "#{teacher} teaches #{course}"
end

# write out array

numbers = [10, 4, 3, 50, 77, 2]

# print original array
puts "First numbers"
p numbers

# iterate through array and delete certain items

numbers.each do |new|
  numbers.delete_if { |new| new < 10 }
end

# print new array
puts "Filtered numbers"
p numbers

# write out array

digits = [3, 5, 10, 43, 101, 345, 1000]
greater = []

# print original array
puts "These original digits"
p digits

# iterate through array and keep certain items

digits.each do |keep|
  greater << digits.drop_while { |keep| keep < 100 }
  break
end

# print new array
puts "Greater digits"
p greater

# write out hash
count = {3 => 'three', 78 => 'seventy-eight', 9 => 'nine', 42 => 'forty-two', 34 => 'thirty-four'}

# print original hash

puts "Original hash"

count.each do |digit, word|
  count[digit].to_i
  puts "#{digit} is spelled #{word}"
end

# iterate through hash and keep certain info

puts "New hash"

count.each do |digit, word|
  count[digit].to_i
  count.delete_if {|digit, word| digit > 10 }
  puts "#{digit} is spelled #{word}"
end

# write out hash
veg = {1 => 'spinach', 2 => 'tomato', 3 => 'spinach', 4 => 'carrots', 5 => 'squash', 6 => 'brocolli'}

# print original hash
puts "Original hash"
p veg

# iterate through hash and delete items until false

veg.each do |number, veggie|
  veg.delete_if {|number, veggie| veggie.include?('s')}
  break
end
# print new hash
puts "New Hash"
p veg