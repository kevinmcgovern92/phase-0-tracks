def interview
  puts "What is your name?"
  name = gets.chomp
  puts "How old are you?"
  age = gets.chomp.to_i
  puts "What year were you born?"
  birth_year = gets.chomp.to_i
  puts "Our company cafeteria serves garlic bread. Should we order some for you?"
  garlic_pref = gets.chomp
    if
      garlic_pref == "yes"
      garlic_pref = true
    else
      garlic_pref= false
    end
  puts "Would you like to enroll in the company's health insurance?"
  insurance = gets.chomp
    if
      insurance == "yes"
      insurance = true
    else
      insurance = false
    end
end
