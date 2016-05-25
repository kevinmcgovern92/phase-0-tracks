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
    (age+birth_year == current_year) && (garlic_pref = true || insurance = true)
    vampire_grade = 1
  elsif
    (age+birth_year != current_year) && (garlic_pref = false || insurance = false)
    vampire_grade = 2
  elsif
    (age+birth_year != current_year) && (garlic_pref = false && insurance = false)
    vampire_grade = 3
  elsif
    name = "Drake Cula", "Tu Fang"
    vampire_grade = 4
  else
    vampire_grade = nil
  end
  case vampire_grade
  when
    vampire_grade = 1
      puts "Probably not a vampire"
  when
    vampire_grade = 2
      puts "Probably a vampire"
  when
    vampire_grade = 3
      puts "Almost certainly a vampire"
  when
    vampire_grade = 4
      puts "Definitely a vampire"
  when
    vampire_grade = nil
      puts "Results inconclusive"
end

end
