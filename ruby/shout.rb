module Shout #Name Module
  
  def yell_angrily(words)
    puts words + "WHAT?!" + " HUH?!"
  end
  #create methods--> mixin, no SELF keyword, takes 1 argument as string
  
  def yell_happily(words)
    puts words + "!!!" + "Hooray!"
  end

end

class Drunk_man
  include Shout
end

#create Classes that can use methods "included" in Shout Module

class Happy_woman
  include Shout
end

drunk_dude = Drunk_man.new
drunk_dude.yell_angrily("I NEED ANOTHER BEER")

#Create Instances of classes, where we can pass in either of the two mmethods inside of shout

cool_lady = Happy_woman.new
cool_lady.yell_happily("I WON THE LOTTERY")

#Write two classes representing anything that might shout, and include the Shout module in those classes.
#Test your work by adding driver code at the bottom of the file that instantiates 
#instances of your classes and calls the two module methods on each instance.
