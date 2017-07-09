# write out method scope
def hogwarts
  name1 = "Parvati"
  name2 = "Padme"
  puts "Welcome to Hogwarts"
  yield(name1, name2)
end

# write out block
hogwarts { |name1, name2| puts "Please come to the Great Hall #{name1} and #{name2}!" }