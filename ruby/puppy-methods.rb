class Puppy
  def fetch(toy)
    puts "I brought back the #{toy}"
  end
end

rex = Puppy.new
rex.fetch("ball")