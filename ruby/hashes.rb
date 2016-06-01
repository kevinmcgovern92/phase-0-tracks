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
  u_name = gets.chomp
  puts "How old is the client?"
  u_age = gets.chomp
  puts "How many children do they have?"
  u_children = gets.chomp.downcase!
    if u_children == "none"
      u_children = 0 ### 0 evaluates as nil and isn't represented when printing the hash values at the end###
    else
      u_children.to_i
    end
  puts "What theme interests the client?"
  u_theme = gets.chomp
  puts "Does the client like open layouts?"
  u_layout = gets.chomp.downcase!
    if
      u_layout == "yes"
      u_layout = true
    else
      u_layout = false
    end
  template = {
    name: u_name,
    age: u_age,
    children: u_children,
    theme: u_theme,
    layout: u_layout
  }
  template.each_value{|value| puts value}
end
