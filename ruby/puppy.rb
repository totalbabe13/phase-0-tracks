
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
end #end of class
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
  
 





puppy_basket = []
#make a place for the 50 instances of puppy class

pup_number = 0 
#puppy counter

puppy_basket.each do |pup|
  pup = Puppy.new
end




while puppy_basket.length. != 50
#compare the number of values in puppy_basket array to 50
  pup_number = pup_number + 1 
  #add 1 puppy to to pup number 
  
  new_pup = ('new_puppy' + pup_number.to_s) 
  #puppy namer
  
  new_pup = Puppy.new 
  #create new instance of Puppy
  
  puppy_basket.push(new_pup)
  #put puppy in basket
  #puts puppy_basket.length
  #count the puppies
end 

#p puppy_basket[5]  returns #<Puppy:0x00558cfc560340>

puppy_basket.each { |pup| pup.fetch "ball" } 
#ask each puppy to fetch ball, prints "I brought back the #{toy}!" 

puppy_basket.each { |pup| pup.roll_over }
#ask each puyppy instance to roll over, prints "***rolls over**" for every instance in array of puppy


#------------------------------------------
class Rahm_E
  def initialize
    puts "Re-elected to office."
  end
  def shake_hands(x)
    puts "shake hands " * x 
  end       
  def cover_ups(scandal)
    puts "Covers up #{scandal}." 
  end
    
end 
#------------------------------------------
#Driver code
mayor = Rahm_E.new
mayor.shake_hands(5)
mayor.cover_ups("police shooting")
daley_plaza = []
mayor_counter = 0
until mayor_counter == 50
    mayor_counter = mayor_counter + 1
    new_mayor = ("new mayor" + mayor_counter.to_s)
    new_mayor = Rahm_E.new 
    daley_plaza.push(new_mayor)
end 
puts daley_plaza
daley_plaza.each {|mayor| mayor.shake_hands(1)}
daley_plaza.each {|mayor| mayor.cover_ups("another police shooting")}



