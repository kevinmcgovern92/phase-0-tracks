# Pseudocode for interior design program
  # Program will be an interface
  # Program will prompt designer to enter   details of client
    # Name
      #string
    # Age
      #integer
    # Number of children
      #integer (none should evaluate as 0)
    # Decor Theme
      # String (can't limit clients' creativity   :D)
    # Likes open layout design
      # Boolean
  # Convert user input to appropriate data type
    # No to_b method
    # to_i method passed on symbols didn't work   in Release 1 irb practice
  # Print hash after data has been input
  # Give user chance to edit a key or not
  # Print hash again
  # Exit
    # Still no idea how to do that ^

def design_template
  template = Hash.new
  puts "What is the client's name?"
  name = gets.chomp
  puts "How old is the client?"
  age = gets.chomp
  puts "How many children do they have?"
  children = gets.chomp.downcase!
    if children == "none"
      children = 0
    else
      children.to_i
    end
  puts "What theme interests the client?"
  theme = gets.chomp
  puts "Does the client like open layouts?"
  layout = gets.chomp.downcase!
    if
      layout == "yes"
      layout = true
    else
      layout = false
    end
end
