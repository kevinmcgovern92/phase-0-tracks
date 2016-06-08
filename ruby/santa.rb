class Santa
  attr_reader :age, :ethnicity
  attr_accessor :gender
  def speak
    puts "Ho, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(cookie_type)
    puts "That was a good #{cookie_type}"
  end

  def initialize(gender, ethnicity)
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = 0
    puts "Initializing Stanta instance..."
  end

  def sound_off
    puts "I identify as #{@gender} for gender and #{@ethnicity} for my ethnicity. I am a proud Santa!"
  end

  def celebrate_birthday
    @age += 1
  end

   def get_mad_at(name)
    @reindeer_ranking.map do |reindeer|
      if reindeer != name
        next
      else
        @reindeer_ranking.delete(name)
        @reindeer_ranking << name
      end
    end
    p @reindeer_ranking
  end

  def age_generator
    @age = Random.rand(140)
    puts "My age is #{@age} years old!"
  end

end


# Driver code for release 0/1
#kris = Santa.new("Male", "Caucasian")
#kris.speak
#kris.eat_milk_and_cookies("Oatmeal butterscotch cookie")


# Previously commented out, used in release 4

santas = []
genders = ["Some sex", "Female", "Male", "Gender Fluid", "Gender Queer", "Trans", "None of your business!"]
ethnicities = ["White", "Black", "Latino", "Native American", "Samoan", "Rasta", "none of your business!", "Persian", "Russian", "Irish"]

100.times do
  santas << Santa.new(genders.sample, ethnicities.sample)
end

santas.each do |santa|
  santa.age_generator
  santa.sound_off
end

# Is there a reason that an array is preferable to a hash here? Maybe because we want to be able to see all the values of the array for demographics?

#if genders.length > ethnicities.length
#  genders.length.times do |i|
#    santas << Santa.new(genders[i], #ethnicities[i])
#  end
#else
#  ethnicities.length.times do |i|
#    santas << Santa.new(genders[i], #ethnicities[i])
#  end
#end

#santas.each do |santa|
#  santa.sound_off
#end


# Driver code for release 2
#kris.get_mad_at("Rudolph")
#kris.celebrate_birthday
#kris.change_gender= "Prince"
#kris.age
#kris.ethnicity
#puts "This Santa is #{kris.age}, #{kris.ethnicity}, and #{kris.gender}"