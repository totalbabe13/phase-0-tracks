#Alias Manager 5.5 Solo Challenge

#Swapping the first and last name.
#Changing all of the vowels (a, e, i, o, or u) to the next vowel in 'aeiou', and all of the consonants (everything else besides the vowels) to the next consonant in the alphabet. So 'a' would become 'e', 'u' would become 'a', and 'd' would become 'f'.

#1.  gets a name from user - FIRST and LAST 

puts 'Please enter your first name:' 
agent_first_name = gets.chomp

puts 'Please enter your last name:'
agent_last_name  = gets.chomp

puts " #{agent_first_name} #{agent_last_name}"