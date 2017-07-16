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
  attr_reader :ethnicity

  def initialize(ethnicity)
    @ethnicity = ethnicity
  end

  def unlock
    puts "Alohomora"

  end

  def levitate
    puts "It's leviosa not leviosaah"

  end

end

wizards = []
wizard_ethnicities = ["Black", "Latino", "Welsh", "Japanese-African", "Filipino", "Mixed", "Pacific Islander", "Malay", "Chinese", "Mexican", "Inuit", "Ethiopian", "Scottish", "Indian", "Pakistani", "Thai", "Roman", "Greek", "Italian", "Colombian", "Maya", "Indigenous American", "Indegenous Australian", "Creole", "Haitian", "Puerto Rican", "French Canadian", "French", "Czech", "Lithuanian", "Iraqi", "Iranian", "Syrian", "Russian", "Nigerian", "Tibetan", "Portuguese", "Brazilian", "Spanish", "Hungarian", "Polish", "Swedish", "Norwegian", "Biracial", "Israeli", "Turkish", "Roma", "Icelandic", "Simoan", "Palestinian"]

wizard_ethnicities.each do |init|
  wizards << Spells.new(init)
end

puts "Wizard minorities"

wizards.each do |magic|
  puts "This wizard is #{magic.ethnicity}"
  puts "To get passed the glass ceiling this wizard opens up a door to access the stairs and walk above it"
  puts "#{magic.unlock}"
  puts "Looks like the stairs are out. The wizard will need to levitate. "
  puts "#{magic.levitate}"
end