#Once you're familiar with the sample code linked above, 
#pseudocode (or write out the algorithms for, in other words)
#he following two methods in phase-0-tracks/ruby/secret_agents.rb. 
#Then write the methods beneath your pseudocode. 
#Do not use .each or .map. (We'll get to those next week.)

#An encrypt method that advances every letter of a string 
#one letter forward. So "abc" would become "bcd". For now, 
#you can assume lowercase input and output. Any space 
#character should remain a space character -- no change made.
#A decrypt method that reverses the process above. Note that 
#by doesn't have a built-in method for going backward one 
#letter. How can you find out where a letter is in the 
#alphabet, then access the letter right before it? 

#Hint: In the IRB session above, you learned how to ask a 
#string for the index of a letter. 
#"abcdefghijklmnopqrstuvwxyz" counts as a string.



#- - - - - - - - - - - - - - - - - - - - - - - - -


#code ----> a,b,c ---> b,c,d ...etc

# "a".next ----> returns "b" value

#what value does a space character have? USE the index method

#step1 retrieve string
#step2 separte string into letters
#step3 change/ each letter
#step4 combine letters back into word


puts 'Hello, and welcome to ENCRYTOMATIC' #welcome interface dialog
puts
puts 'Please enter a word you would like encrypted and press ENTER:' 

index = 0
secret_password = gets.chomp #ask user for word
puts "Length of password is #{secret_password.length} letters." #(sample code: displays length of word

while index < secret_password.length
  p secret_password[index]
  index += 1
end


index = 0
while index < secret_password.length
  secret_password[index] = secret_password[index].next!
  index += 1
end

puts secret_password



















