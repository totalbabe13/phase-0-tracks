#What is your name? 
#How old are you? What year were you born? 
#Our company cafeteria serves garlic bread. 
#Should we order some for you? 
#Interview With A Vampire

#At the beginning of your program, ask the user how many employees will be processed, then begin the survey process for the first employee. After you print the result for that employee, start the survey over again, and repeat until all the employees have been processed.

#(Hmm, doing things over and over again ... that certainly sounds like a loop, doesn't it?)

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

puts 'Question Number 2: How old are you? What year were you born? 
      (please answer with your birth year ) ' #numeric/integer value converted to boolean
      age_of_person = gets.chomp

	if age_of_person.to_i >= 1900 #true?
	   age_of_person = true

	else age_of_person.to_i <= 1900
		  age_of_person = false

	end		  
	   	   
puts 
puts 'Oh I see...Let me just write that one down.'
puts
puts

puts 'Question Number 3: Our company cafeteria serves garlic bread.      Should we order some for you? (y/n) '
      garlic_allergy = gets.chomp #yes or no value convert to boolean
puts 'ok you got it.'

	if   garlic_allergy = 'y'
		   garlic_allergy = true

	else garlic_allergy = 'n'
		   garlic_allergy = false
		
	end

puts
puts
puts 'Question Number 4: Would you like to enroll in the company’s       health insurance? (it\'s got FULL dental...y/n)'
      health_insurance_prefrence = gets.chomp
puts 'great!, ok thank you for you\'re time!' #yes or no value
puts 
puts
puts
	if   health_insurance_prefrence = 'y'
		   health_insurance_prefrence = true

	else health_insurance_prefrence = 'n'
		   health_insurance_prefrence = false
	end	  	




#WE NEED FOUR OUTPUTS: 

  #1 - This person is a VAMPIRE 
  #2 - This person is a HUMAN
  #3 - this person is PROBABLY a VAMPIRE
  #4 - INCONCLUSIVE



  if (age_of_person && garlic_allergy) && health_insurance_prefrence == true
     puts 'This is a human being, not a vampire.'
  
 
  elsif (age_of_person && garlic_allergy) && health_insurance_prefrence == false
     puts ' This is vampire, not a human being. '
  end 
  
  if age_of_person && (garlic_allergy || health_insurance_prefrence) == true
     puts ' This person is probably a human being.'
  end
    
  if  age_of_person && (garlic_allergy || health_insurance_prefrence) == false
     puts ' Results inconclusive...'
  end
   
  
  amount_of_employees = (amount_of_employees.to_i-1)
end #end employee loop 
  
puts
puts




#If the employee got their age wrong, and hates garlic bread or waives insurance, the result is “Probably a vampire.”

  #if (age_of_person && garlic bread) || health_insurance_prefrence =
   #false
   #puts 'This is a vampire, not a human being'
  #end
  
#If the employee got their age wrong, hates garlic bread, and doesn’t want insurance, the result is “Almost certainly a vampire.”
  ###end  
  
puts
puts








