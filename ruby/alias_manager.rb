#Pseudocode for alias method
# Prompt user for real name
  # Assume input to be one string of two words
  # Downcase
# Swap the first and last words of the name
  # Potentially by assigning to a new array?
# Change all vowels to the next vowel
  # Use a string of "aeiou" in the same way that we used the alphabet string for the decrypter
# Change all consonants to the next consonant
  # need edge cases for the letters preceding vowels - z, d, h, n, t
# Use capitalize method before returning new name
# Return new name

def alias_creator(name)
  name.downcase!
  name_array = name.split(' ')
  name_array.reverse!
  # insert method for changing vowels here
  post_vowels = next_vowel(name_array)
  # insert method for changing consonants here#
  new_name = next_consonant(post_vowels)
  # re-capitalize the first letter of each name
  new_name.map! {|word| word.capitalize}
  # take our array and turn it into a string
  p new_name * " "
end

#Pseudocode for next_vowel method
# I want to say: if one of the items in the array has a character that matches this string, then replace that character with the next character in this string
# I think the vowels.next should be pretty simple (will have to try using all vowels though)
# The comparison will certainly be the tough part. There has to be a more elegant way to do it than everything that went into the decrypt method
# Abandoning regexp matchdata

def next_vowel(last_first)
  last_first.map! do |word|
    word.gsub(/[aeiou]/, 'a' => 'e', 'e' => 'i', 'i' => 'o', 'o' => 'u', 'u' => 'a')
  end
end

# Potential issue with this code: unsure how I will have the return store in something that I can use. How do you have the output of a method get interat with other code? (This is a stupid and basic question)

#Pseudocode for next_consonant
# Don't think it will be very similar to next_vowel
# This is ripe for an if/else statement
  # else word[index].next
# Because I sorta skipped the step of identifying vowels and instead
# Ran into issues with while/index/if based iteration, so just hardcoded it the long way
def next_consonant (last_first)
  last_first.map! do |word|
    word.gsub(/[zdhntbcfgjklmpqrsvwxy]/, 'z' => 'b', 'd' => 'f', 'h' => 'j', 'n' => 'p', 't' => 'v', 'b' => 'c', 'c' => 'd', 'f' => 'g', 'g' => 'h', 'j' => 'k', 'k' => 'l', 'l' => 'm', 'm' => 'n', 'p' => 'q', 'q' => 'r', 'r' => 's', 's' => 't', 'v' => 'w', 'w' => 'x', 'x' => 'y', 'y' => 'z')
  end
end

def alias_interface
  puts "Enter your name, agent:"
  name = gets.chomp
  alias_creator(name)
  puts "If you are satisfied, type quit. Otherwise, enter another name to continue"
  answer = gets.chomp.downcase!
  until answer == "quit"
    alias_creator(answer)
    puts "If you are satisfied, type quit. Otherwise, enter another name to continue"
  answer = gets.chomp.downcase!
  alias_creator(answer)
    puts "If you are satisfied, type quit. Otherwise, enter another name to continue"
  answer = gets.chomp.downcase!
  end
end