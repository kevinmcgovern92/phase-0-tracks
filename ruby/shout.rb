module Shout
  def self.yell_angrily(words)
    words + "!!!" + " :("
  end

  def self.yell_happily(words)
    words + "!!" + " :D !!"
  end
end

p Shout.yell_happily("I'm quitting my job")
p Shout.yell_angrily("I hope all the bad things in the world happen to you and only you")