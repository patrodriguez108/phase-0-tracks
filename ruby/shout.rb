module Shout
  def self.yell_angrily(words)
    words + "!!!" + " :("
  end

  def self.yelling_happily(yippie)
    yippie + "!!!" + " XD"
  end
end

p Shout.yell_angrily("Aww fudge")
p Shout.yelling_happily("Hecking yes")