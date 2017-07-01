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
      age_of_person = gets.chomp
     
puts "so you are #{age_of_person} years old. Very good. Now enter the year you were born in:"
      birth_year = gets.to_i
      
puts "You were born in the year #{birth_year}"

birth_year_check =  (current_year.to_i - age_of_person.to_i)
age_check       =  (current_year.to_i - birth_year.to_i)
puts
puts

  if birth_year_check == birth_year
    birth_year = true
  elsif birth_year_check > birth_year 
    birth_year = true 
    puts "OH! your birthday is coming up!"
  else birth_year_check < current_year
    birth_year = false
    
  end 

# NOTE: THE VARIABLE to compare later is the boolean declared for birth_year

#  - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
#  - - - - - - - - - - - - - - - - - GARLIC ALLEGRY VERIFICATION SECTION  - - - - - - - - - - - - - - 
puts 
puts 
puts
puts

puts 'Question Number 3: Our company cafeteria serves garlic bread.      Should we order some for you? (y/n) '
      garlic_allergy = gets.chomp #yes or no value convert to boolean
puts 'ok you got it.'

	if   garlic_allergy == 'y'
		   garlic_allergy = true
       puts garlic_allergy
	else garlic_allergy == 'n'
		   garlic_allergy = false
		   puts garlic_allergy
		
	end

puts
puts
#  - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

#  - - - - - - - - - -HEALTH INSURANCE VERIFICATION SECTION  - - - - - - - - - - - - - - 
puts 

puts 'Question Number 4: Would you like to enroll in the company’s       health insurance? (it\'s got FULL dental...y/n)'
      health_insurance_prefrence = gets.chomp
puts 'great!, ok thank you for you\'re time!' #yes or no value
	if   health_insurance_prefrence == 'y'
		   health_insurance_prefrence = true
       puts health_insurance_prefrence
       
	else health_insurance_prefrence = 'n'
		   health_insurance_prefrence = false
		   puts health_insurance_prefrence
	end	  	

#  - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

#  - - - - - - - - - - - - - - - - - - COMPARISONS / BOOLEANS - - - - - - - -


#WE NEED FOUR OUTPUTS: 

  #1 - This person is a VAMPIRE 
  #2 - This person is a HUMAN
  #3 - this person is PROBABLY a VAMPIRE
  #4 - INCONCLUSIVE


  if (birth_year && garlic_allergy) && health_insurance_prefrence == false
     puts ' This is vampire, not a human being. '
  end   
  
  
  if  (birth_year && garlic_allergy) && health_insurance_prefrence == true
     puts 'This is a human being, not a vampire.'
  end   
  
  if birth_year && (garlic_allergy || health_insurance_prefrence) == true
     puts ' This person is probably a human being.'
  end
    
  if  birth_year && (garlic_allergy || health_insurance_prefrence) == false
     puts ' Results inconclusive...'
  end
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
    end  
   end  
  
#  - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

#  - - - - - - - - - - - - - - - - - - - - END OF EMPLOYEE PROCESSING LOOP- - - - - - - - -

  amount_of_employees = (amount_of_employees.to_i-1)
end #end employee loop 
  
puts
puts


#In addition to the other questions in the survey, use a loop to ask the employee to name any allergies, one at a time. The employee can type “done” when finished.

#As long as the allergy is not “sunshine,” continue the loop for as long as is needed. If at any point the employee lists “sunshine” as an allergy, skip directly to the result of “Probably a vampire.”



#If the employee got their age wrong, and hates garlic bread or waives insurance, the result is “Probably a vampire.”

  #if (age_of_person && garlic bread) || health_insurance_prefrence =
   #false
   #puts 'This is a vampire, not a human being'
  #end
  
#If the employee got their age wrong, hates garlic bread, and doesn’t want insurance, the result is “Almost certainly a vampire.”
  ###end  
  
puts"Actually, never mind! What do these questions have to do with anything? Let\'s all be friends."
puts








