
#In phase-0-tracks/ruby/puppy_methods.rb:

#Add driver code at the bottom that initializes an instance of Puppy, and verify that your instance can now fetch a ball. Run the file from the command line to check your work.
#Add a speak method that takes an integer, and then prints "Woof!" that many times.
#Add a roll_over method that just prints "*rolls over*".
#Add a dog_years method that takes an integer (of human years) and converts that number to dog years, returning a new integer.
#Add one more trick -- whichever one you'd like.
#If you haven't already, update your driver code to demonstrate that all of these methods work as expected.





#In puppy_methods.rb, design and implement your own class below the Puppy class -- 
#anything you'd like, but it should have an initialize method and at least two other instance methods. Then do the following:




class Puppy
# - - - - - - - - - - - - 
#Add a method to your Puppy class named initialize. It should print "Initializing new puppy instance ..."
#Without changing your driver code, run the program. Does initialize run? When?
def initialize
  	puts "initializing PUPPY instance ..."
  end	

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
    
# - - - - - - - - - - - - 
#In puppy_methods.rb, design and implement your own class below the Puppy class -- anything you'd like, 
#but it should have an initialize method and at least two other instance methods. Then do the following:

#Use a loop to make 50 instances of your class.
#Modify your loop so that it stores all of the instances in a data structure.

#Iterate over that data structure using .each and call the instance methods you wrote on each instance. 
#So if you wrote a Gymnast class, this is where you'd call .flip and .jump on each of your instances of Gymnast.
#If the steps above feel really unfamiliar, remember that you've been working with classes
#the entire time -- strings are instances of the String class. So you can start by using string instances in place
#of your own class instances, if that helps you visualize how the code should come together.

	#
  
 



end

lassy= Puppy.new

lassy.fetch "ball"
lassy.speak 3
lassy.roll_over
lassy.dog_years 5
lassy.shakes 4


puppy_basket = []
#make a place for the 50 instances of puppy class

pup_number = 0 
#puppy counter

new_pup = ('new_puppy' + pup_number.to_s) 
#puppy namer



while puppy_basket.length. != 50
#compare the number of values in puppy_basket array to 50
  pup_number = pup_number + 1 
  #add 1 puppy to to pup number 
  puppy_basket.push(new_pup)
  #put puppy in basket
  puts puppy_basket.length
  #count the puppies
end 





