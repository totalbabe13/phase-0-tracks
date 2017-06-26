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
first_question = gets.chomp
puts
puts 'Very good, nice to meet you ' + first_question +'.'

puts
puts

puts 'Question Number 2: How old are you? What year were you born? (please answer with your age and birth year separarted by a comma) '
second_question = gets.chomp
puts 
puts 'Oh I see...Let me just write that one down.'

puts
puts

puts 'Question Number 3: Our company cafeteria serves garlic bread. Should we order some for you? (y/n) '
third_question = gets.chomp
puts 'ok you got it.'

puts
puts

puts 'Question Number 4: Would you like to enroll in the company’s health insurance? (it\'s got FULL dental...y/n)'
fourth_question = gets.chomp
puts 'great!, ok thank you for you\'re time!' 


puts first_question
puts second_question
puts third_question
puts fourth_question




