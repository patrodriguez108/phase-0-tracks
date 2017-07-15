class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

   def speak(n)
    n.times{puts "Woof"}
  end

  def roll_over
    puts "*rolls over*"
  end

  def dog_years(x)
    puts x * 7
  end

  def walk(name)
    puts "It's time for #{name} to go on a walk"
  end

  def initialize
    p "initializing new puppy instance"
  end
end

play = Puppy.new
play.fetch("ball")

fun = Puppy.new
fun.walk("Georgie")

talk = Puppy.new
talk.speak(5)

talk = Puppy.new
talk.roll_over

years = Puppy.new
years.dog_years(3)


# Release 2

class Spells

  def initialize
    puts "Howdy"
end

  def unlock
    puts "Alohomora"

  end


  def levitate
    puts "It's leviosa not leviosaah"

  end

end