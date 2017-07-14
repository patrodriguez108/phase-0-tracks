# define santa class

class Santa_01
end

# create instance of santa class for speak
# add line to define speak method
# print "Ho ho ho! Haaaaapy Holidays!"
# end method

greeting = Santa_01.new
  def speak
    puts "Ho ho ho! Haaaaapy Holidays!"
  end

# print speak method

puts speak

# create instance of Santa class for treats
# add line to define cookies method
# print "That was a good <parameter>!"
# end method

treats = Santa_01.new
  def food(cookie)
    puts "That was a good #{cookie}!"
  end

# print eat_milk_and_cookies method

puts food("snickerdoodle")

# create instance of Santa class for initialize
# add line to define initialize method
# print "Initializing Santa instance..."
# end method

init = Santa_01.new
  def initializing
    puts "Initializing Santa instance..."
  end

# print initialize method

puts initializing

# define method with attributes of gender and ethnicity
# list attributes
#end method
# define method listing reindeer array
# list array within attribute
# end method
# define method with age as a parameter
# default age attribute to 0
# end method
# define about method
# print ethnicity and gender
# end method



# define method that will age Santa by 1 year
# add one year to Santa age
# end method

# define getter that will list Santa age
# print age
# end method
# define
# define method that will state Santa dissatisfaction with reindeer
# print "Santa is mad at #{reindeer}"
# end method
# define method that will move reindeer to end of array
# move reindeer to end of array
# end method
# define method that will print current gender
# print gender
# end method
# define setter that will enable Santa to reassign gender
# have variable equal gender attribute
# end method
# define getter that will print ethnicity attribute
# print ethnicity
# end method

class Santa
  def initialize(gender, ethnicity)
    @gender = gender
    @ethnicity = ethnicity
  end

  def reindeer
    @reindeer_ranking = []
    reindeer = "Rudolph Dasher Dancer Prancer Vixen Comet Cupid Donner Blitzen"
    array = reindeer.split(' ')
      array.each do |reindeer_ranking|
    end
  end

  def reindeer_ranking
    reindeer
  end

  def get_mad_at(index)
    index = index.to_i
    bad_deer = reindeer_ranking[index]
    puts "Santa is mad at" + " " + bad_deer
    puts bad_deer + " " + "will be moved to the end of the list"
    deer_array = reindeer_ranking.rotate(-index)
    p deer_array
  end

  def age
    @age = 0
  end

  def celebrate_birthday(new_age)
    @age = new_age
  end

  def ethnicity
    @ethnicity
  end

  def gender
    @gender
  end

  def gender=(gender_update)
    @gender = gender_update
  end

  def age
    @age
  end

end



# write out driver code showing Santa diversity
  # create new instance equalled to a variable
    # specify attributes in parentheses
  # print "This Santa is"
  # call about method


puts "Santa_01"
firstsanta = Santa.new("male", "Filipino")
puts "This Santa is #{firstsanta.gender} and #{firstsanta.ethnicity}"
firstsanta.celebrate_birthday(1)
puts "This Santa is now #{firstsanta.age} years old"

puts "Santa_02"
secondsanta = Santa.new("non-binary", "Indian")
secondsanta.gender = "gender fluid"
puts "This Santa is #{secondsanta.gender} and #{secondsanta.ethnicity}"

puts "Santa_03"
thirdsanta = Santa.new("female", "Mixed Race")
puts "This Santa is #{thirdsanta.gender} and #{thirdsanta.ethnicity}"

puts "Santa_04"
fourthsanta = Santa.new("male", "Black")
fourthsanta.gender = "trans male"
puts "This Santa is #{fourthsanta.gender} and #{fourthsanta.ethnicity}"

puts "Reindeer ranking"
santahasdeer = Santa.new("non-binary", "European")
puts "This Santa is the oldest known Santa and #{santahasdeer.gender} and #{santahasdeer.ethnicity}"
puts "This is Santa's current reindeer ranking"
p santahasdeer.reindeer_ranking
santahasdeer.get_mad_at(4)