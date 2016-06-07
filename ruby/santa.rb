class Santa
  def speak
    puts "Ho, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(cookie_type)
    puts "That was a good #{cookie_type}"
  end

  def initialize
    puts "Initializing Stanta instance..."
  end
end

kris = Santa.new
kris.speak
kris.eat_milk_and_cookies("Oatmeal butterscotch cookie")