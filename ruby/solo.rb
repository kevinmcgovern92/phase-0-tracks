# Pseudocode for class design
# Class: Aes Sedai
  # Attribute: Name
    # String
  # Attribute: Age
    # Integer > 0
  # Attribute: Ajah
    # Possible values: Green, Red, Brown, Grey, Blue, Yellow, White, Black
  # Method: Act imperious
    # Aes Sedai stares at speaker in silence, until they avert their eyes in deference
      # Puts: *holds eye contact and smiles softly*
  # Method: Weave(element_1, *element_others)
    # Possible arguments: Air, Earth, Fire, Water, Spirit
    # Aes Sedai weaves between 1 and 5 elements
      # IF one argument: puts "#{@name} is weaving #{element_1}! Run!"
      # IF multiple arguments: puts "#{@name} is weaving #{element_1} and #{element_others}! RUN FOR YOUR LIVES!"
  # Method: Act arrogant
    # Aes Sedai invokes the argument from authority - themselves as the authority.
      # Puts "I am an Aes Sedai of the #{@ajah} and you think to question me? No, you shall not."

class AesSedai
  attr_reader :age, :name
  attr_accessor :ajah

  def initialize(name, ajah)
    @name  = name
    ajahs = ["White", "Grey", "Green", "Yellow", "Blue", "Red", "Brown", "Black" ]
    unless ajahs.include?(ajah)
      puts "Never seen the like in Tar Valon. You sure don't seem like Aes Sedai..."
    end
    @ajah = ajah
  end

  def seniority(age)
    @age = age
  end

  def act_imperious
    puts "*holds eye contact and smiles softly*"
  end

  def weave(element_1, *element_others)
      other_elements = element_others * ", "
      puts "#{@name} is channeling #{other_elements} and #{element_1}. RUN FOR YOUR LIVES!"
  end

  def act_arrogant
      puts "I am #{@name}, Aes Sedai of the #{@ajah} Ajah, and you think to question me?!?! No, you shall not."
  end

end

#elaida = AesSedai.new("Elaida", "Red")
#elaida.seniority(140)
#elaida.act_imperious
#elaida.weave("fire", "water", "spirit")
#elaida.act_arrogant
#p "#{elaida.name} is #{elaida.age} years old."

def interface
  iterum = ""
  until iterum == "no"
    puts "Welcome to the Aes Sedai creation   matrix! What is the name of your Aes Sedai"
    name = gets.chomp
    puts "What Ajah are you a member of: Blue,  Green, Yellow, Red, White, Gray, Brown, or   Black? (Don't pick Black, please)"
    ajah = gets.chomp
    aes_sedai = AesSedai.new(name, ajah)
    puts "I know it's not polite, but how old is  your Aes Sedai?"
    age = gets.chomp.to_i
    aes_sedai.seniority(age)
    puts "Okay #{aes_sedai.name} of the #{aes_sedai .ajah} who is #{aes_sedai.age}, welcome to the Tower!"
    tar_valon = []
    tar_valon << aes_sedai
    puts "Would you like to create another Aes Sedai?"
    iterum = gets.chomp
  end
    tar_valon.each do |sedai|
      puts "#{name} of the #{ajah} is #{age} years old."
    end
end

interface
