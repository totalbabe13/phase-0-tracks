#Eventually, your simulator will build thousands of Santas, but for now, start by defining a Santa class in phase-0-tracks/ruby/santa.rb. Your class should have three instance methods:

#A speak method that will print "Ho, ho, ho! Haaaappy holidays!" (Santa has been working on being more inclusive.)
#An eat_milk_and_cookies method that takes a cookie type (example: "snickerdoodle") as a parameter and prints "That was a good <type of cookie here>!" 
#An initialize method that prints "Initializing Santa instance ...".
#Add a bit of code below your class declaration to check that you're able to initialize a Santa instance and call its methods.


#Update your Santa class with the following attributes:

#gender, which will be a string passed in on initialization
#ethnicity, which will be a string passed in on initialization

#reindeer_ranking, an array of reindeer from most preferred to least preferred. 
#This is not passed in on initialization; it simply gets a default value of 
#["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]

#age, which is not passed in on initialization and defaults to 0

class Santa

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
    puts " - - - - - - - - - - - - - - - - "
    
  end 

end #end of class

 

 
