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
  puts "Your automatically generated alias is:"
  p new_name * " "
end

#Pseudocode for next_vowel method
# If one of the items in the array has a character that matches this string, then replace that character with the next character in this string
# Abandoning regexp matchdata
# Found #gsub method, works much better

def next_vowel(last_first)
  last_first.map! do |word|
    word.gsub(/[aeiou]/, 'a' => 'e', 'e' => 'i', 'i' => 'o', 'o' => 'u', 'u' => 'a')
  end
end

#Pseudocode for next_consonant
# Identify edge cases first, make them work
# Use while/index/if to iterate through other letters
# Ran into issues with while/index/if based iteration, so just hardcoded it the long way
def next_consonant (last_first)
  last_first.map! do |word|
    word.gsub(/[zdhntbcfgjklmpqrsvwxy]/, 'z' => 'b', 'd' => 'f', 'h' => 'j', 'n' => 'p', 't' => 'v', 'b' => 'c', 'c' => 'd', 'f' => 'g', 'g' => 'h', 'j' => 'k', 'k' => 'l', 'l' => 'm', 'm' => 'n', 'p' => 'q', 'q' => 'r', 'r' => 's', 's' => 't', 'v' => 'w', 'w' => 'x', 'x' => 'y', 'y' => 'z')
  end
end

def alias_interface
  fake_data = {}
  puts "Enter your name, agent:"
  name = gets.chomp
  alias_creator(name)
  answer = " "
# Line 57 exists because storing data in the hash returns it a second time. I haven't been able to figure out a way to populate the hash without returning alias_creator(name) again
  puts "Again, that is:"
  c_array = name.split(' ')
  c_array.map! {|word| word.capitalize}
  d_array = c_array * " "
  fake_data.store(d_array, alias_creator(name))
  until answer == "quit"
    puts "If you are satisfied, type quit. Otherwise, enter another name to continue"
    answer = gets.chomp
    if
      answer == "quit"
      break
    else
      answer.downcase!
      alias_creator(answer)
# Line 72 exists because storing data in the hash returns it a second time. I haven't been able to figure out a way to populate the hash without returning alias_creator(name) again
      puts "Again, that is:"
      a_array = answer.split(" ")
      a_array.map! {|word| word.capitalize}
      b_array = a_array * " "
      fake_data.store(b_array, alias_creator(answer) )
    end
  end
  fake_data.each {|new_n, old| p "#{old} is actually #{new_n}!"}
end