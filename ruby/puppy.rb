
#In phase-0-tracks/ruby/puppy_methods.rb:

#Add driver code at the bottom that initializes an instance of Puppy, and verify that your instance can now fetch a ball. Run the file from the command line to check your work.
#Add a speak method that takes an integer, and then prints "Woof!" that many times.
#Add a roll_over method that just prints "*rolls over*".
#Add a dog_years method that takes an integer (of human years) and converts that number to dog years, returning a new integer.
#Add one more trick -- whichever one you'd like.
#If you haven't already, update your driver code to demonstrate that all of these methods work as expected.

class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(barks)
    puts ("WOOF!" * 3)
    barks
  end

end

lassy= Puppy.new

lassy.fetch "ball"
lassy.speak 3

