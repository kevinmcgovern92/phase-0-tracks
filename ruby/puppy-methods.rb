class Puppy
  def fetch(toy)
    puts "I brought back the #{toy}"
  end

  def speak(x)
    x.times{puts "Woof"}
  end

  def roll_over
    puts "*rolls over*"
  end
  def dog_years(x)
    p x*7
  end
end

rex = Puppy.new
rex.fetch("ball")
rex.speak(5)
rex.roll_over
rex.dog_years(7)