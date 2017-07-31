#In phase-0-tracks/ruby/hashes.rb, pseudocode and write a program that will allow an 
#interior designer to enter the details of a given client: 
#the client's name, age, number of children, decor theme, 
#and so on (you can choose your own as long as it's a good mix of string, integer, and boolean #data).

#Your keys should be symbols unless you find that you need a string for some reason -- 
#usually only when spaces or other "user friendly" formatting are #needed 
#(as in the case of using someone's full name as a hash key). 
#Basically, symbols are simpler for programmers to use, and readable enough by
#technical folks to be used in place of strings most of the time.

#Your program should ...

#Prompt the designer/user for all of this information.
#Convert any user input to the appropriate data type.
#Print the hash back out to the screen when the designer has answered all of the questions.
#Give the user the opportunity to update a key (no need to loop, once is fine). 
#After all, sometimes users make mistakes! If the designer says "none", #skip it. 
#But if the designer enters "decor_theme" (for example), your program should ask 
#for a new value and update the :decor_theme key. (Hint: 
#Strings have methods that will turn them into symbols, which would be quite handy here.) 
#You can assume the user will correctly input a key that #exists in your hash -- 
#no need to handle user errors.
#Print the latest version of the hash, and exit the program.
#Be sure to pseudocode, and leave your pseudocode in as comments.

puts "Welcome to Iris Interiors INC. We will see to it that what you see is what you get!"
puts
puts "Please, complete the following questionaire as accurately as possible, to help us, HELP YOU."
puts
puts "= "*35


client_info = {}




#interior designer to enter the details of a given client: 
#the client's name, age, number of children, decor theme, 

#gets name
puts "Please enter you full name:"
client_info[:client_name] = gets.chomp

#gets age
puts "Please enter you current age:"
client_info[:client_age] = gets.chomp.to_i

#gets number of children
puts "Please enter how many children you have, if any:"
client_info[:client_children] = gets.chomp.to_i

#gets decore theme
puts "Please enter you prefered decore theme:"
client_info[:client_theme] = gets.chomp

#number of pets
puts "Please enter the number of pets you hav if any:"
client_info[:client_pets] = gets.chomp.to_i


puts "= "*35
#p client_info #driver code

# - - - - - -  - - - - - -  - - - - - -  - - - - - - 
#UPDATES/CORRECTIONS - reviewing information -printing out hash 

puts 'Please, look over the information you submitted and make any corrections if necessary:'
puts "= "*35
puts
puts
puts "Your full name is : #{client_info[:client_name]}"
puts
puts "Your current age is : #{client_info[:client_age]}"
puts
puts "You have this many children: #{client_info[:client_children]} " 
puts
puts "Your decor theme choice is : #{client_info[:client_theme]}"
puts
puts "The number of pets your home has : #{client_info[:client_pets]}"

# - - - - - -  - - - - - -  - - - - - -  - - - - - - 
#info review/ edit 
puts "= "*35


#'Would you like to edit any of the information you have submitted?'

# Key selection by client to manually change the value of that key

# or type in DONE if they are satisfeid with the info







