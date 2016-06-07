class Puppy
  def fetch(toy)
    puts "I brought back the #{toy}"
  end

  def speak(x)
    x.times{puts "Woof"}
  end
end

rex = Puppy.new
rex.fetch("ball")
rex.speak(5)