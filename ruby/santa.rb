

#Add three attribute-changing methods to your Santa class:

#celebrate_birthday should age Santa by one year.
#get_mad_at can take a reindeer's name as an argument, and move that reindeer in last place in the reindeer rankings. Vixen knows what he did.
#The @gender attribute should have a setter method that allows @gender to be reassigned from outside the class definition.
#Add two "getter" methods as well:

#The method age should simply return @age.
#The method ethnicity should return @ethnicity.


class Santa
  attr_accessor :age, :gender

  def initialize (gender,ethnicity)
    @gender    = gender
    @ethnicity =  ethnicity
    @age = 0
    @favorite_reindeer = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
 
    #puts "initializing SANTA"
  end 
# - - - - - - - - - - - - 
  def cookie_eating(cookie)
    puts "That was a good #{cookie} cookie!"
    cookie
  end

# - - - - - - - - - - - - 
  def speak
    puts ("HO! HO! HO! Haaaaaaapy Holidays!" * 3)
  end

# - - - - - - - - - - - - 

  def about
    puts "New santa INFO:"
    puts "Gender: #{@gender}"
    puts "Ethnicity: #{@ethnicity}"
    puts "Age: #{@age}"
    puts " - - - - - - - - - - - - - - - - "
    
  end 
# - - - - - - - - - - - - 
  #getter method for @age
  #def age 
    #@age 
  #end  
   
  #setter method for @age
  #def age= (new_age)
    #@age = new_age
  #end 

    #setter method for gender
  #def gender= (new_gender)
   # @gender = new_gender
  #end   
# - - - - - - - - - - - - 

  def celebrate_birthday(new_age)
     @age = (new_age + 1)
     puts "Happy Birthday Santa"
     
  end
# - - - - - - - - - - - - 
  def get_mad_at(bad_reindeer)
     @favorite_reindeer.delete_if {|reindeer| reindeer == bad_reindeer}
     @favorite_reindeer.insert(-1, bad_reindeer)
     puts
     puts "Got mad at #{@favorite_reindeer[-1]}!!!"
     puts
     p @favorite_reindeer
     puts " - - - - - - - - - - - - - - - "
  end   

end #end of class

example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]

example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]


santas = []

example_genders.length.times do |i|
 santas << Santa.new(example_genders[i], example_ethnicities[i])
end


santas.each do |i|
  i.about
end  

test_santa= Santa.new("male","Colombian")
test_santa.age = 31
test_santa.about

test_santa.get_mad_at ("Vixen")
test_santa.about

test_santa.gender = "Newest Gender"
test_santa.about




 
