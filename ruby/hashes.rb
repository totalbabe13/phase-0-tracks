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