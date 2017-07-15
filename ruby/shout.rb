# module Shout
#   def self.yell_angrily(words)
#     words + "!!!" + " :("
#   end

#   def self.yelling_happily(yippie)
#     yippie + "!!!" + " XD"
#   end
# end

# p Shout.yell_angrily("Aww fudge")
# p Shout.yelling_happily("Hecking yes")

module Shout
  def yells(words)
    puts "I am hecking yelling because I feel much emotion #{words} AND I NEED TO YELL #{words.upcase}"
  end
end

class Teacher
  include Shout
end

class Dog
  include Shout
end

teacher = Teacher.new
puts "The teacher is mad because the student brought his dog to class"
teacher.yells("why is that goshdarn dog here")

dog = Dog.new
puts "The dog is very happy to be in his master's classroom because he normally always stays home"
dog.yells("this is the best day of my life")