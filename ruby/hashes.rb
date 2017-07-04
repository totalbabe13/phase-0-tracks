# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
#INTRO section / Hello, with brief explanation of use of program
puts "Welcome to Iris Interiors INC. We will see to it that what you see is what you get!"
puts
puts"Please, complete the following questionaire as accurately as possible, to help us, HELP YOU."
puts
puts"Press ENTER to continue:"

client_assesment = {
            
}
puts 'Please, enter your full name:'
client_assesment[:client_name] = gets.chomp
#p client_assesment[:client_name]
puts

puts 'What is your current age in years?'
client_assesment[:client_age] = gets.to_i
puts 
#p client_assesment[:client_age]

puts'How many children do you have?'
client_assesment[:client_children] = gets.to_i
puts
#p client_assesment[:client_children]

puts 'Please tell us what decor theme you had in mind?'
client_assesment[:client_decor_theme] = gets.chomp
puts
#p client_assesment[:client_decor_theme]  

puts 'How many bedrooms does you home include?'
client_assesment[:client_bedrooms] = gets.to_i
puts
#p client_assesment[:client_bedrooms] 
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
#UPDATES/CORRECTIONS - reviewing information -printing out hash 
puts 'Please, review the following information and make any corrections if necessary:'
puts
puts
puts "Your full name is : #{client_assesment[:client_name]}"
puts
puts "Your current age is : #{client_assesment[:client_age]}"
puts
puts "You have this many children: #{client_assesment[:client_children]} " 
puts
puts "Your decor theme choice is : #{client_assesment[:client_decor_theme]}"
puts
puts "The number of bedrooms your home has : #{client_assesment[:client_bedrooms]}"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
puts 'Would you like to edit or change any of your answers?'
puts 'If so, select the NUMBER corresponding to your answer, and re-enter your response.'
puts 'Or, simply press ENTER, to confirm your application.'
puts
puts 'Would you like to make any changes?' 
puts 'Enter a number or press ENTER:'
       response_edit = gets.to_i
       if response_edit == 1
         puts 'Please re-enter your name:'
         new_name = gets.chomp
         client_assesment[:client_name] = new_name
         puts 
         #puts client_assesment[:client_name]
      elsif response_edit == 2
         puts 'Please re-enter your age:'
         new_age = gets.to_i
         client_assesment[:client_name] = new_age
         puts 
         #puts client_assesment[:client_age] 
      
      elsif response_edit == 3
         puts 'Please re-enter how many children you have:'
         new_child = gets.to_i
         client_assesment[:client_children] = new_child
         puts 
         #puts client_assesment[:client_children] 
      
      elsif response_edit == 4
         puts 'Please re-enter your theme choice:'
         new_theme = gets.to_i
         client_assesment[:client_decor_theme] = new_theme
         puts 
         #puts client_assesment[:client_decor_theme] 
         
      elsif response_edit == 5
         puts 'Please re-enter your number of bedrooms:'
         new_bedrooms = gets.to_i
         client_assesment[:client_bedrooms] = new_bedrooms
         puts 
         #puts client_assesment[:client_bedrooms]    
         
       end 


#INTRO section / Hello, with brief explanation of use of program

#first hash will ask : 

#1.NAME - string

#2.AGE - integer 

#3.NUMBER OF CHILDERN -integer

#4.DECORE THEME - string

#5.HOW MANY BEDROOMS- integer

#6.IF THIS IS THIER FIRST HOME -boolean

#7.NAME OF SPOUSE -string

#( use combination of intergers, strings, booleans values.)
#  - - - - - - - - - - - - - - - - - 

#UPDATES/CORRECTIONS

#ARE YOU SURE OF THE information is correct?

#user would enter key name, and correction 
#key value would re-re assign 
#print updated hash
#exit program