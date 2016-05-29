# Pseudo code for method 1
# Ask user for a string
# Transform string, move all letters one forward in alphabet

def encrypt(password)
  index = 0
  while index < password.length
    password[index] = password[index].next
    index +=1
  end
end