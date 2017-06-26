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
(please answer with your birth year ) ' #numeric/integer value
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
garlic_allergy = gets.chomp #yes or no value 
puts 'ok you got it.'

puts
puts

puts 'Question Number 4: Would you like to enroll in the company’s health insurance? (it\'s got FULL dental...y/n)'
health_insurance_prefrence = gets.chomp
puts 'great!, ok thank you for you\'re time!' #yes or no value


age_of_person_vampire = false

puts age_of_person && age_of_person_vampire 
puts age_of_person || age_of_person_vampire 



