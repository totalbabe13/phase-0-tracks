#Interview With A Vampire

puts 'Hello, how many employees will you be processing today?'
amount_of_employees = gets.chomp 
"Lets get started"

while amount_of_employees.to_i != 0 
puts 
puts
puts 'Welcome to your interview,'
puts
puts 'We would like to ask you a few questions to get started ...'
puts 
puts '(PRESS ENTER WHEN YOU ARE READY)'
gets
puts 
puts
puts 'Question Number 1: What is your name? '
      name_of_person = gets.chomp
      subject_name = name_of_person == 'Drake Cula'  
      subject_name_2 = name_of_person == 'Tu Fang'
puts  
puts 'Very good, nice to meet you ' + name_of_person +'.'
puts
puts
#  - - - - - - - - - - - - - - - - - AGE VERIFICATION SECTION  - - - - - - - - - - - - - - 
current_year =Time.now.year 
puts 
puts
puts
puts 'Question Number 2: How old are you? First, Please enter your age'
      age_given = gets.to_i
      
puts "so you are #{age_given} years old. Very good. Now enter the year you were born in:"
      birth_year = gets.to_i
     
subject_age =  (current_year - birth_year) == age_given || ((current_year - 1) -birth_year) == age_given
#if subject_age true, human, if subject age false =VAMP


#  - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
#  - - - - - - - - - - - - - - - - - GARLIC ALLEGRY VERIFICATION SECTION  - - - - - - - - - - - - - - 
puts 
puts 
puts
puts

puts 'Question Number 3: Our company cafeteria serves garlic bread.      Should we order some for you? (y/n) '
      garlic_allergy = gets.chomp 
puts 'ok you got it.'
  
  garlic_prefrence = garlic_allergy == "y" || garlic_allergy == "Y"
 
puts
puts
#  - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

#  - - - - - - - - - -HEALTH INSURANCE VERIFICATION SECTION  - - - - - - - - - - - - - - 
puts 

puts 'Question Number 4: Would you like to enroll in the company’s       health insurance? (it\'s got FULL dental...y/n)'
      health_insurance_prefrence = gets.chomp
puts 'great!, ok thank you for you\'re time!' #yes or no value
puts

health_prefrence = health_insurance_prefrence == 'y' || health_insurance_prefrence == 'Y'

#  - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

#  - - - - - - - - - - - - - - - - - - COMPARISONS / BOOLEANS - - - - - - - -
#puts 'test values'
#puts
#puts 'age value return'
#puts subject_age
#puts
#puts 'garlic_prefrence return'
#puts garlic_prefrence
#puts
#puts 'health_prefrence return'
#puts health_prefrence
#puts
#puts 'name assesment'
#puts subject_name
#WE NEED FOUR OUTPUTS: 

  #1 - This person is a VAMPIRE 
  #2 - This person is a HUMAN
  #3 - this person is PROBABLY a VAMPIRE
  #4 - INCONCLUSIVE
puts 
puts 'Conlusion:'

  if subject_age && (garlic_prefrence || health_prefrence) 
    result = 'Probably not a vampire.'
  
  elsif !subject_age && (garlic_prefrence || health_prefrence)
    result ='Probably a vampire.'
    
  elsif !subject_age && (!garlic_prefrence && !health_prefrence)
    result ='Almost certainly a vampire.'  
  
  else result = "INCONCLUSIVE RESULTS"
  
  end
  
  if    subject_name   == true
    result = 'Definitely a vampire'
  elsif subject_name_2 == true 
    result = 'Definitely a vampire.'
  end  
    
    

  
  puts result
     
  
  
 
#  - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

#  - - - - - - - - - - - - - - - - - - - - ALLEGIRES QUESTIONS- - - - - - - - - - - - - - 
   
puts
puts
puts 'please List you allergies, you can type each one in, and press ENTER, when you are finished, type in DONE.'
  allergies = gets.chomp
  
     
   until allergies == 'DONE'
    allergies = gets.chomp
    if allergies == 'sunshine' 
      puts '** BURSTS INTO FLAMES ***'
      puts 'Conclusion:'
      puts 'Definitely a vampire'
    end  
   end  
  
#  - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

#  - - - - - - - - - - - - - - - - - - - - END OF EMPLOYEE PROCESSING LOOP- - - - - - - - -

  amount_of_employees = (amount_of_employees.to_i-1)
end #end employee loop 
  
puts
puts
puts"Actually, never mind! What do these questions have to do with anything? Let\'s all be friends."
puts
