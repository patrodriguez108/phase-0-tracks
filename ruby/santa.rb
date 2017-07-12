# define santa class

class Santa
end

# create instance of santa class for speak
# add line to define speak method
# print "Ho ho ho! Haaaaapy Holidays!"
# end method

greeting = Santa.new
  def speak
    puts "Ho ho ho! Haaaaapy Holidays!"
  end

# print speak method

puts speak

# create instance of Santa class for treats
# add line to define cookies method
# print "That was a good <parameter>!"
# end method

treats = Santa.new
  def food(cookie)
    puts "That was a good #{cookie}!"
  end

# print eat_milk_and_cookies method

puts food("snickerdoodle")

# create instance of Santa class for initialize
# add line to define initialize method
# print "Initializing Santa instance..."
# end method

init = Santa.new
  def initializing
    puts "Initializing Santa instance..."
  end

# print initialize method

puts initializing