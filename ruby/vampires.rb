def interview
  puts "How many employees to process?"
  survey_no = gets.chomp.to_i
  ppl_processed = 0
  until ppl_processed == survey_no
    puts "What is your name?"
    name = gets.chomp
    puts "How old are you?"
    age = gets.chomp.to_i
    puts "What year were you born?"
    birth_year = gets.chomp.to_i
    puts "Our company cafeteria serves garlic   bread. Should we order some for you?"
    garlic_pref = gets.chomp
      if
        garlic_pref == "yes"
        garlic_pref = true
      else
        garlic_pref= false
      end
    puts "Would you like to enroll in the   company's health insurance?"
    insurance = gets.chomp
      if
        insurance == "yes"
        insurance = true
      else
        insurance = false
      end
    if
      insurance == false && garlic_pref == false
      no_nothing = true
    else
      no_nothing = false
    end
    current_year = 2016
    puts "Do you have any allergies we should be aware of? Type 'done' when finished."
    allergy = gets.chomp
    until allergy == "done"
      if allergy == "sunshine"
        puts "Almost certainly a vampire"
        break
      end
      puts "Do you have any allergies we should be aware of? Type 'done' when finished."
      allergy = gets.chomp
    end
    unless allergy == "sunshine"
      if
        (age+birth_year == current_year) && (   garlic_pref == true || insurance ==   true )
        puts "Probably not a vampire"
      elsif
        (age+birth_year != current_year) && (   garlic_pref == false || insurance ==     false) && no_nothing == false
        puts "Probably a vampire"
      elsif
        (age+birth_year != current_year) && ( no_nothing == true)
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
  ppl_processed +=1
  end
  puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends"

end
