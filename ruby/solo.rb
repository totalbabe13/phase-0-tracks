# - - - - - - - - - - -  - - - - - - - - - 
class WordGame
  attr_reader :guess_count 
  attr_reader :is_over
  
  def initialize
    @given_word =[]
    @secret_word = []
    @blank_letter = "_ " #blank to fill in missing letters
    
    @word_length =0 
    @guess_count = 0
    @missed_guesses = 0
    @is_over = false
  end

  def mask_word(secret_word)
    @word_length = secret_word.length #length of STRING 
  end  
  
  def guesser_feedback(given_word)
    @secret_word = given_word.split
    feedback = (@word_length * 2)
  end  
    
end    
  

# user interface

puts "Welcome to the Word Game!"
game = WordGame.new  

puts "PLAYER 1: please eneter a word for PLAYER 2 to guess"

#while !game.is_over
secret_word = gets.chomp 

puts 
puts 
puts
puts 
puts 
puts
puts 
puts 
#puts 'PLAYER 2: NO PEEKING!'
puts 
puts 
puts
puts 
puts 
puts
puts 
puts

#puts 'OK PLAYER 2: Guess a letter you think is in the word:'
#print a string with dashes/ the dashes represent the number of letters in word
#puts "_ _ _ _ _ _ _"
#guessing = gets.chomp

#if the letter is in the word
  #puts letter in corresponding blank
  #"_ _ _ c _ _ _" 
  #AND you add 1 to @guess_count
  
