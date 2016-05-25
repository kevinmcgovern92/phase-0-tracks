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
  current_year = 2016
  if
    (age+birth_year == current_year) && (garlic_pref == true || insurance == true)
    puts "Probably not a vampire"
  elsif
    (age+birth_year != current_year) && (garlic_pref == false || insurance == false)
    puts "Probably a vampire"
  elsif
    (age+birth_year != current_year) && (garlic_pref == false && insurance == false)
    puts "Almost certainly a vampire"
  elsif
    case name
    when "Drake Cula", "Tu Fang"
      puts "Definitely a vampire"
    else
      nil
    end
  else
    puts "Results inconclusive"
  end


end
