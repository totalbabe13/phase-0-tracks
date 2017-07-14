
#In phase-0-tracks/ruby/puppy_methods.rb:

#Add driver code at the bottom that initializes an instance of Puppy, and verify that your instance can now fetch a ball. Run the file from the command line to check your work.
#Add a speak method that takes an integer, and then prints "Woof!" that many times.
#Add a roll_over method that just prints "*rolls over*".
#Add a dog_years method that takes an integer (of human years) and converts that number to dog years, returning a new integer.
#Add one more trick -- whichever one you'd like.
#If you haven't already, update your driver code to demonstrate that all of these methods work as expected.

class Puppy
# - - - - - - - - - - - - 
  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

# - - - - - - - - - - - - 
  def speak(barks)
    puts ("WOOF!" * 3)
    barks
  end

# - - - - - - - - - - - - 
  def roll_over
    puts ("*rolls over*")
    
  end

# - - - - - - - - - - - - 
  def dog_years(human_years)
  #input: NUMBER of human years
    dog_years = (human_years * 7)
  #convert to dog years (multiplies human years times 7)
    puts dog_years
  #output: Number of dog years
    end

# - - - - - - - - - - - - 
	def shakes(number_of_shakes)
		doggy_shakes =("*Shakes*" *number_of_shakes)
		puts "#{doggy_shakes} GOOD BOY!!!!"  
	end

end

lassy= Puppy.new

lassy.fetch "ball"
lassy.speak 3
lassy.roll_over
lassy.dog_years 5
lassy.shakes 4



