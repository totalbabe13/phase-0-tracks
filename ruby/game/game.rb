

class Game

   attr_reader  :masked_word, :limit_of_guesses, :letter_placement, :finished
   attr_accessor :given_word, :letter_guess, :guesses_bin

# - - - - - - - - - - - - - - - - - - - - - - - - 
def initialize
   @given_word            #word from PLAYER 1 in string form
   @converted_word        #word from PLAYER 1 in array form
   @masked_word           #word as " _ _ _ _ _ _ _"
   @letter_placement =[]  #array used to determine place of multiple letters
   @limit_of_guesses      # string length x's 2
    
   @letter_guess          # PLAYER 2 guesses a letter
   @guesses_bin  = []      # stores guesses 
   @guesses_left = 0
   
   #@correct_guess= false

   @finished = false       #finished game

end

# - - - - - - - - - - - - - - - - - - - - - - - - -

# - - - - - - - - - - - - - - - - - - - - - - - - -
def masking_word
    @converted_word   = @given_word.split(//)
    @masked_word      = @converted_word.map {|x| x = "_ " }
    @letter_placement = @converted_word.map {|x| x}
    
    #p @converted_word   => [b a n a n a s]
    #p @masked_word      => [ _ _ _ _ _ _ _ ]
    #p @given_word       =>  "bananas"
    #p @letter_placement => [ _ a _ a _ a _]
    # ALL of these WORK 
    
end
# - - - - - - - - - - - - - - - - - - - - - - - - -
def print_masked_word
    p @masked_word.join  
end 
# - - - - - - - - - - - - - - - - - - - - - - - - -
def number_of_guesses
    @limit_of_guesses = @converted_word.length * 2    
end
# - - - - - - - - - - - - - - - - - - - - - - - - -
def info_about_guesses
puts
puts
puts "the letters you have guessed are:" 
@guesses_bin.uniq! 
puts "------> #{guesses_bin.join}"         
number_of_guesses
puts
puts "PLAYER 2: you have:  #{@limit_of_guesses - @guesses_left} guesses left "
    if  @guesses_left == number_of_guesses
        puts "OH NO! PLAYER 2: you are out of guesses."
        puts "GAME OVER - better luck next time ..."
        @finished  = true
    end     

end
# - - - - - - - - - - - - - - - - - - - - - - - - - 
def wrong_guess_feedback
    if  @wrong_guess == true
        puts "RESULT:"
        puts "test- THE LETTER -#{letter_guess}- IS NOT IN THIS WORD"
        #@guesses_left = @guesses_left + 1
        @guesses_bin.push(letter_guess)
        print_masked_word
    else @wrong_guess = false    
    end    

end
# - - - - - - - - - - - - - - - - - - - - - - - - -
def final_guess
    if masked_word.join.delete(' ') == @given_word
         puts "YOU GUESSED IT! YOU WIN!!! "
         @finished = true
    
    else @finished = false    
    end   
end    
# - - - - - - - - - - - - - - - - - - - - - - - - -
def store_guess
    guesses_bin.push(@letter_guess)  

end    
# - - - - - - - - - - - - - - - - - - - - - - - - -
def already_guessed 
    
    already_guessed = @guesses_bin.include?(letter_guess)
    if already_guessed == true 
       puts
       puts "RESULT:"
       puts " YOU HAVE ALREADY GUESSED THE LETTER -#{letter_guess}-"
       print_masked_word
       true
    else false   
    end   
end    
# - - - - - - - - - - - - - - - - - - - - - - - - - 

def checking_guess_for_matching
guess_attempt   = @converted_word.include?(letter_guess)

    if already_guessed == false 
            if guess_attempt == false 
                puts "RESULT:"
                puts "THE LETTER -#{letter_guess}- IS NOT IN THIS WORD" 
                store_guess  
                #@guesses_left = @guesses_left + 1
            end



                @converted_word.each do |letter|
             if letter == @letter_guess
                find_place = @letter_placement.index(letter_guess)
                @letter_placement.delete_at(find_place)
                @letter_placement.insert(find_place, "_ ")
                @masked_word.insert(find_place,@letter_guess)
                @masked_word.delete_at(find_place + 1)
                puts
                puts
                puts "RESULT:"
                puts 'CORRECT! YOU GUESSED A LETTER IN THE WORD!'
                puts
                puts
                @correct_guess = true
                #@wrong_guess   = false
                print_masked_word
                store_guess
                final_guess
                #p @wrong_guess
                end  #end of DO block
                        
             end #end of IF
             @guesses_left = @guesses_left + 1   
    end #end of already_guessed
 
  
 
#guess_counter
info_about_guesses
end #for checking_guess_for_matching
# - - - - - - - - - - - - - - - - - - - - - - - - 



# - - - - - - - - - - - - - - - - - - - - - - - - 
end #end of class
# - - - - - - - - - - - - - - - - - - - - - - - - 

new_game = Game.new 
puts "welome to the GAME"
puts "submitt your word PLAYER 1:"
new_game.given_word = gets.chomp #gets word from PLAYER 1
new_game.masking_word #works
puts
puts
puts
until new_game.finished == true
puts
puts "- - - - - - - - - - - - - - - - - - - - - -"
puts "PLAYER 2:"
puts "Guess what letter might be in this word: "
new_game.print_masked_word
new_game.letter_guess = gets.chomp
puts
puts

new_game.checking_guess_for_matching #returns masked_word ["_ ", "a", "_ ", "a", "_ ", "a", "_ "]
#new_game.already_guessed #so far ok

puts
puts
end#UNTIL LOOP END





# - - - - - - - - - - 
#METHODS that WORK: 

# new_game.masking_word 
# new_game.print_masked_word 
# - - - - - - - - - - - 

#METHODS THAT NEED WORK:

#new_game.multiple_letter_placer
#new_game.already_guessed
#new_game.store_guess
#new_game.checking_guess_for_matching
#new_game.print_masked_word



