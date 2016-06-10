#module Shout
#  def self.yell_angrily(words)
#    words + "!!!" + " :("
#  end
#
#  def self.yell_happily(words)
#    words + "!!" + " :D !!"
#  end
#end

#p Shout.yell_happily("I'm quitting my job")
#p Shout.yell_angrily("I hope all the bad things in the world happen to you and only you")

module Shout
  def yell_angrily(words)
    words + "!!!" + " :("
  end

  def yell_happily(words)
    words + "!!!!" + " :D"
  end
end

class NewYorker
  include Shout
end

class SportsFan
  include Shout
end

filardi = NewYorker.new
p filardi.yell_angrily("Everything is so expensive")
p filardi.yell_happily("I'm moving to Italy in a few weeks")

drake = SportsFan.new
p drake.yell_angrily("The Raptors lost to the Cavs")
p drake.yell_happily("The Warriors are gonna beat the Cavs")