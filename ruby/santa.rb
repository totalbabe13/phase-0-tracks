#Eventually, your simulator will build thousands of Santas, but for now, start by defining a Santa class in phase-0-tracks/ruby/santa.rb. Your class should have three instance methods:

#A speak method that will print "Ho, ho, ho! Haaaappy holidays!" (Santa has been working on being more inclusive.)
#An eat_milk_and_cookies method that takes a cookie type (example: "snickerdoodle") as a parameter and prints "That was a good <type of cookie here>!" 
#An initialize method that prints "Initializing Santa instance ...".
#Add a bit of code below your class declaration to check that you're able to initialize a Santa instance and call its methods.


class santa

  def initializing
    p "initializing SANTA"
  end 
# - - - - - - - - - - - - 
  def cookie_eating(cookie)
    puts "That was a good #{cookie} cookie!"
    cookie
  end

# - - - - - - - - - - - - 
  def speak
    puts ("HO! HO! HO! Haaaaaaapy Holidays!" * 3)
    hos
  end

# - - - - - - - - - - - - 
 end #end of class

 person_random = santa.new

 person_random.cookie_eating(Chocolate Chip)

 puts 

 person_random.speak