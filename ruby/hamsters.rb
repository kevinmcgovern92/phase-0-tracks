# hamster's name (the clerk names any hamsters who come in without name tags, so all hamsters have names)

# method
def hamster_intake
  puts "What is this hamster's name?"
  name = gets.chomp
  puts "What color is this hamster's fur?"
  color = gets.chomp
  puts "How loud is this hamster on a scale of 1 to 10?"
  loud = gets.chomp.to_i
  puts "Is this hamster a good candidate for adoption (good or bad)?"
  adoption = gets.chomp
    if adoption == "good"
      adoption = true
    else
      adoption = false
    end
  puts "Do you know what this hampster's age is (y/n)?"
  age_known = gets.chomp
    if age_known == "n"
      age = nil
    else puts "If so what is it (in years)?"
      age = gets.chomp.to_f
    end
    if age == nil
      age = "not known"
    end
  # puts "This hamster is named #{name}. His fur is #{color}. On a loudness scale of 1 to 10 he is a #{loud}. He appears to be a #{adoption} candidate for adaption. His age is #{age}."
  puts "Hamster name: #{name}"
  puts "Fur color: #{color}"
  puts "Loudness: #{loud}/10"
  puts "Good Adoption Candidate: #{adoption}"
  puts "Hamster age: #{age}"

end

puts hamster_intake

# volume level from 1 to 10 (some people are light sleepers who won't adopt extra-squeaky hamsters)

# method

# fur color

# whether the hamster is a good candidate for adoption




# estimated age
