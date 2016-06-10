# Pseudocode for class design
# Class: Aes Sedai
  # Attribute: Name
    # String
  # Attribute: Age
    # Integer > 0
  # Attribute: Ajah
    # Possible values: Green, Red, Brown, Grey, Blue, White, Black
  # Method: Act imperious
    # Aes Sedai stares at speaker in silence, until they avert their eyes in deference
      # Puts: *holds eye contact and smiles softly*
  # Method: Weave(element_1, *element_others)
    # Aes Sedai weaves between 1 and 5 elements
      # IF one argument: puts "#{@name} is weaving #{element_1}! Run!"
      # IF multiple arguments: puts "#{@name} is weaving #{element_1} and #{element_others}! RUUUUUUUN!"
  # Method: Act arrogant
    # Aes Sedai invokes the argument from authority - themselves as the authority.
      # Puts "I am an Aes Sedai of the #{@ajah} and you think to question me? No, you shall not."
