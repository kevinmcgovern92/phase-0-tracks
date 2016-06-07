class Santa
  def speak
    puts "Ho, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(cookie_type)
    puts "That was a good #{cookie_type}"
  end

  def initialize(gender, ethnicity)
    @gender = gender
    @ethnicity = ethnicity
    puts "Initializing Stanta instance for a #{@gender} #{@ethnicity}..."
  end
  @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
  @age = 0

end

kris = Santa.new("Male", "Caucasian")
kris.speak
kris.eat_milk_and_cookies("Oatmeal butterscotch cookie")