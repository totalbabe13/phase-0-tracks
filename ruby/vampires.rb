#What is your name? 
#How old are you? What year were you born? 
#Our company cafeteria serves garlic bread. 
#Should we order some for you? 
#Interview With A Vampire

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

	if age_of_person.to_i >= 1960 #true?
	   age_of_person = true

	else age_of_person.to_i <= 1960
		  age_of_person = false

	end		  
	   	   
puts 
puts 'Oh I see...Let me just write that one down.'
puts
puts

puts 'Question Number 3: Our company cafeteria serves garlic bread. Should we order some for you? (y/n) '
garlic_allergy = gets.chomp #yes or no value convert to boolean
puts 'ok you got it.'

	if garlic_allergy = y
		garlic_allergy = true

	else garlic_allergy = n
		garlic_allergy = false
		
	end

puts
puts

puts 'Question Number 4: Would you like to enroll in the company’s health insurance? (it\'s got FULL dental...y/n)'
health_insurance_prefrence = gets.chomp
puts 'great!, ok thank you for you\'re time!' #yes or no value

	if health_insurance_prefrence = y
		health_insurance_prefrence = true

	else health_insurance_prefrence = n
		  health_insurance_prefrence = false
	end	  	

#VAMPIRE VALUES
age_of_person_vampire              = false
garlic_allergy_vampire             = false
health_insurance_prefrence_vampire = false

#HUMAN values
age_of_person              = true
garlic_allergy             = true
health_insurance_prefrence = true




#puts age_of_person && age_of_person_vampire 
#puts age_of_person || age_of_person_vampire 



