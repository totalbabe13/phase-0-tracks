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

#wallpaper prefrence
puts "tell your wall paper preferences(write in any that apply, 
press enter, and if your finished type DONE):"
client_info[:client_wallpaper] = []
wallpaper = ''
while wallpaper != 'DONE'
	wallpaper = gets.chomp
	client_info[:client_wallpaper].push wallpaper
end


puts "= "*35
#p client_info #driver code

# - - - - - -  - - - - - -  - - - - - -  - - - - - - 
#UPDATES/CORRECTIONS - reviewing information -printing out hash 

puts 'Please, look over the information you submitted and make any corrections if necessary:'
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
puts 
puts "Your wall paper choices are as listed : #{client_info[:client_wallpaper]}"

# - - - - - -  - - - - - -  - - - - - -  - - - - - - 
#info review/ edit 
puts "= "*35

puts 'Any other changes? enter CATAGORY or type in DONE'
puts 'If so, select the CATAGORY corresponding to your answer, and re-enter your response.'
puts 'when you have finished simply type DONE, to confirm your application.'
puts
puts "CATAGORIES:  --> client_name, client_age, client_children, client_theme, client_pets, client_wallpaper "

response_edit = ''
changes_question = 'Any other changes? enter CATAGORY or type in DONE'

while response_edit != 'DONE'

response_edit = gets.chomp #retrieve key
       #user input your_name'--> user accesses key
       if response_edit == 'client_name' 
       #if user inputs key name, they can change the key value 
         find_key = response_edit.to_sym 
         #assign key to variable
         puts 'Re-eneter you name:'
         client_info[find_key] = gets.chomp 
         #with replace key value with response
         puts changes_question 
         #ask about any other changes
         puts ''
         #test - puts client_assesment[find_key]
         
      elsif response_edit == 'client_age'
         find_key = response_edit.to_sym
         puts 'Re-eneter you age:'
         client_info[find_key] = gets.chomp
         puts changes_question
         puts ''
         #test - puts client_assesment[find_key]
         
      elsif response_edit == 'client_children'
         find_key = response_edit.to_sym
         puts 'Re-eneter the number of children you have:'
         client_info[find_key] = gets.chomp
         puts changes_question
         puts ''
         #test - puts client_assesment[find_key]
      
      elsif response_edit == 'client_theme'
         find_key = response_edit.to_sym
         puts 'Re-eneter your decor theme:'
         client_info[find_key] = gets.chomp
         puts changes_question
         puts ''
         #test - puts client_assesment[find_key]   
      
      elsif response_edit == 'client_pets'
         find_key = response_edit.to_sym
         puts 'Re-eneter how many pets you have:'
         client_info[find_key] = gets.chomp
         puts changes_question
         puts ''
         #test - puts client_assesment[find_key]

      elsif response_edit == 'client_wallpaper'
         find_key = response_edit.to_sym
         puts 'Re-eneter your wallpaper choices:'
         client_info[find_key] = gets.chomp
         puts changes_question
         puts ''
         #test - puts client_assesment[find_key]   
      
      end
    end  
# - - - - - -  - - - - - -  - - - - - -  - - - - - -       
#UPDATES/CORRECTIONS - reviewing information -printing out hash 

puts ' The final information you submitted is below:'
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
puts 
puts "Your wall paper choices are as listed : #{client_info[:client_wallpaper]}"

# - - - - - -  - - - - - -  - - - - - -  - - - - - - 

puts
puts "THANK YOU! We will review your submission and get back to you ASAP"



