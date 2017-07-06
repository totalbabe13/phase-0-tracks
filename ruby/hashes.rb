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
puts ' - - - - - - - - - - - - - - - - - - - - '
puts 'Would you like to edit or change any of your answers?'
puts 'If so, select the CATAGORY corresponding to your answer, and re-enter your response.'
puts 'Or, simply press ENTER, to confirm your application.'
puts
puts 'Would you like to make any changes?' 
puts
puts 'Enter a CATAGORY or press ENTER :'
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - -- - - - - 
#1. how to turn strings into keys
#2. assign symbols to key names
#3. Re assign key values
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - -- - - - -
#UPDATES/CORRECTIONS

#ARE YOU SURE OF THE information is correct?

#user would enter key name, and correction 
#key value would re-re assign


       response_edit = gets.chomp
       #user input your_name'--> user accesses key
       if response_edit == 'your_age'
         find_key = response_edit.to_sym
         puts 'Re-eneter you age:'
         client_assesment[find_key] = gets.chomp
         #test - puts client_assesment[find_key]
         
      elsif response_edit == 'your_name'
         find_key = response_edit.to_sym
         puts 'Re-eneter you full name:'
         client_assesment[find_key] = gets.chomp
         #test - puts client_assesment[find_key]
         
      elsif response_edit == 'children_number'
         find_key = response_edit.to_sym
         puts 'Re-eneter the number of children you have:'
         client_assesment[find_key] = gets.chomp
         #test - puts client_assesment[find_key]
      
      elsif response_edit == 'decor_theme'
         find_key = response_edit.to_sym
         puts 'Re-eneter your decor theme:'
         client_assesment[find_key] = gets.chomp
         #test - puts client_assesment[find_key]   
      
      elsif response_edit == 'bedrooms_number'
         find_key = response_edit.to_sym
         puts 'Re-eneter how many bedrooms you have:'
         client_assesment[find_key] = gets.chomp
         #test - puts client_assesment[find_key]
      
      elsif response_edit == ''
      end
      
       

#  - - - - - - - - - - - - - - - - - 
#print out latest version of hash
puts
puts
#puts client_assesment  --> prints out hash format
#formatted into strings below:

puts 'The application below is completed, thank you!'
puts ' - - - - - - - - - - - - - - - - - - - - - - - -'
puts
puts "1.Your full name is : #{client_assesment[:your_name]}"
puts
puts
puts "2.Your current age is : #{client_assesment[:your_age]}"
puts 
puts
puts "3.You have this many children: #{client_assesment[:children_number]} " 
puts 
puts
puts "4.Your decor theme choice is : #{client_assesment[:decor_theme]}"
puts 
puts
puts "5.The number of bedrooms your home has : #{client_assesment[:bedrooms_number]}"
puts
puts
puts ' - - - - - - - - - - - - - - - - - - - - '
puts 'Thank you, Good-bye!'


# - - - - - - - - - - - - - - - - - - - - - - - - - 
#---- LOOK THIS UP - how to use booleans in hashes - !!!!!
#puts 'Is this the first home you\'ve owned? (Y/N)'
#client_assesment[:client_first_home] = gets.chomp
#puts
#p client_assesment[:client_first_home]  

#puts 'What is the name of your spouse, if you have one? (If none, enter NONE)'
#client_assesment[:client_spouse] = gets.chomp
#puts
#p client_assesment[:client_spouse]  




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