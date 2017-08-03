#Using plain old English in a text file or other scratch pad, 
#pseudocode a class for a word-guessing game that meets the following specifications. 
#Assume your driver code will handle input and output as far as the user is concerned. 
#In other words, write a class designed for a computer program to use, not one designed 
#for a human to use directly, then use driver code to bridge the gap between human and Ruby object.

#One user can enter a word (or phrase, if you would like your game to support that), 
#and another user attempts to guess the word.
#Guesses are limited, and the number of guesses available is related to the length of the word.
#Repeated guesses do not count against the user.
#The guessing player receives continual feedback on the current state of the word. 
#So if the secret word is "unicorn", the user will start out seeing something like "_ _ _ _ _ _ _", 
#which would become "_ _ _ c _ _ _" after the user enters a guess of "c".
#The user should get a congratulatory message if they win, and a taunting message if they lose.


class Game

attr_reader :guesses_bin, :limit_of_guesses, :guesses_left
attr_accessor :given_word, :masked_word, :letter_guess

# - - - - - - - - - - - - - - - - - - - - - - - - - 

def initialize
	@given_word #word from player 1, to be guessed
	@masked_word # array with blanks ==> ["_ ", "_ ", "_ ", "_ ", "_ ", "_ ", "_ "]
	@letter_guess #player 2's guess per turn 
	@guesses_bin = [] #hold player 2's guesses
	@limit_of_guesses
	@guesses_left = 0
end


# - - - - - - - - - - - - - - - - - - - - - - - -
#make guessing interface: create  "_ _ _ c _ _ _"
def spacer
	puts "|" 
	puts "|"
	puts "|" 
	puts "|"	
	puts "|" 
	puts "|"
	puts "|" 
	puts "|"
	puts "|" 
	puts "v"
	puts 
	puts
end 	
# - - - - - - - - - - - - - - - - - - - - - - - - -
def masking_word
	array_1 = @given_word.split(//)
 	@masked_word =array_1.map {|x| x = "_ " }
 	@given_word = @given_word.split(//)
 	#p @masked_word.join --> prints out "_ _ _ _ _ _ _ "
end
# - - - - - - - - - - - - - - - - - - - - - - - - -
def print_masked_word
 	p @masked_word.join
end 
# - - - - - - - - - - - - - - - - - - - - - - - - - 
def number_of_guesses
	@limit_of_guesses = @given_word.length * 2
	
end
# - - - - - - - - - - - - - - - - - - - - - - - - - 
def guesses_count
   #number_of_guesses = number_of_guesses + 1
end

# - - - - - - - - - - - - - - - - - - - - - - - - - 

def guessing_feedback
    
    
    
    @guesses_bin.push(letter_guess) # putting letter guess into front of array
    
    guess_attempt = @given_word.include?(letter_guess)   #=> true
    	if guess_attempt == true
    		letter_place =  @given_word.index(letter_guess) 
     		letter_guess << " " 
    		@masked_word.insert(letter_place, letter_guess) 
    		@masked_word.delete_at(letter_place + 1)
    		
    		 puts 'VOILA! You guessed a correct letter'
    		 print_masked_word


    	else puts "the letter #{letter_guess} is not in this word"
    	     print_masked_word
    	end 
        puts
        puts
    	puts "the letters you have guessed are: ------> #{guesses_bin.join}"  
        #@guesses_left = number_of_guesses - 1
         #guesses_count
    puts
    #p guesses_left 
    #p letter_guess
    #puts @guesses_bin #=>  []
    #puts @masked_word.join #=>  ["_ ", "_ ", "_ ", "_ ", "_ ", "_ ", "_ "]
    #p @given_word  #=>  ["c", "l", "o", "v", "e", "r", "s"]
     
   
end#end of guessing_feedback

# - - - - - - - - - - - - - - - - - - - - - - - - - 
# - - - - - - - - - - - - - - - - - - - - - - - - - 

end	#end of class
# - - - - - - - - - - - - - - - - - - - - - - - - - 


#driver code

new_game = Game.new 


puts "welome to the GAME"
puts "submitt your word PLAYER 1:"

new_game.given_word = gets.chomp! #gets word from PLAYER 1
new_game.masking_word             #coverts word into blanks            
new_game.spacer



while new_game.guesses_left != new_game.number_of_guesses
puts
puts "PLAYER 2:"
puts "Guess what letter might be in this word "
puts


	

new_game.letter_guess = gets.chomp
new_game.guessing_feedback

# adjust number of guesses left
end


#- - - - - - - - - - - - - - - - - - - - - - - - -
#new_game.number_of_guesses 
#p new_game.letter_guesses
#p new_game.guesses_bin
#new_game.print_masked_word #DRIVER checking if it is printing out 
#new_game.spacer #temp
#new_game.guessing_feedback #printing out  - - - - -
#p new_game.masked_word.length
#p new_game.given_word.length
