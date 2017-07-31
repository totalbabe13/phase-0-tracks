puts
puts 
puts 'WELCOME SECRET AGENT'
puts 'YOU have been selected for a top secret mission to find CARMEN SANDIEGO!'
puts 'First things first, we need you to enter your first and then last name into our ALIAS generator:'


def agent_name
  
  final_alias = [] #display final result
  while final_alias.length !=  2 
  # *side note only accepts two names
  
  puts 'enter a name:'
  agent = gets.chomp 
  
  not_vowels  = ['b','c','f','g','j','k','l','m','p','q','r','s','v','w','x','y']
  #consonants converted to next consonant : b-->c .. y-->z
  
  vowels      = ['a','e','i','o','u'] 
  #vowels will be converted to next vowel in sequence: a-->e, e-->i and edge case u-->a
  
  pre_vowels  = ['d','h','n','t','z'] 
  #these letters come before vowels, cannot be used with method --> .next
  #(letter Z is edge case, converts to 'b')
  #example:  d --> f
 
  code_array1 = agent.downcase.split('') 
  #transform name entered into array, each letter becomes an object
  
  new_code_name = [] #collects encrypted letters
  
  number_of_letters = code_array1.length # ends loop when one name is finished translating
  
  
  #p code_array1  # ["l", "e", "o", "n", "a", "r", "d", "o"]
  
  new_alias = []
  
  
  while new_code_name.length != number_of_letters
  
    first_letter = code_array1.first
    #point to the first letter => 'l'
  
    #task 1: ask if letter is vowel or not ?
      if vowels.any? {|letter| letter == first_letter} 
       #compare vowel array to the first letter, hardcode results  
       #puts'vowel'
       #puts first_letter #if vowel
         if first_letter == 'a'
            first_letter = 'e'
            new_code_name.push(first_letter)      
      
         elsif first_letter == 'e'
            first_letter = 'i'
            new_code_name.push(first_letter) 
        
         elsif first_letter == 'i'
            first_letter = 'o'
            new_code_name.push(first_letter)
        
         elsif first_letter == 'o'
            first_letter = 'u'
            new_code_name.push(first_letter)
        
         else  first_letter == 'u'
            first_letter= 'a'
            new_code_name.push(first_letter)
      end
   #puts first_letter
   #puts new_code_name  
 
 
          #task 2: ask if letter is pre- vowel(or z) or not ?
   elsif pre_vowels.any? {|letter| letter == first_letter} #also EDGE CASE "Z" to letter "B"
      #puts 'pre-vowel'
      #puts first_letter #if pre_vowel--> hardcode results
   
      if first_letter == 'd'
         first_letter = 'f'
         new_code_name.push(first_letter)
      
      elsif first_letter == 'h'
            first_letter = 'j'
            new_code_name.push(first_letter)
        
      elsif first_letter == 'n'
            first_letter = 'p'
            new_code_name.push(first_letter)
        
      elsif first_letter == 't'
            first_letter = 'v'
            new_code_name.push(first_letter)
      
      elsif first_letter == 'z'
            first_letter ='b'
            new_code_name.push(first_letter)
   end 
      #puts first_letter
      #puts new_code_name
  
  
        #Task 3: catch all, any remaining character is a consonant that can be converted with next
   elsif not_vowels.select {|consonant| consonant == first_letter}
         new_consonant = first_letter.next
         #puts 'consonant'
         #puts new_consonant #if regular consonant
         new_code_name.push(new_consonant)
         #puts new_code_name
   end  

code_array1.rotate! 
#changes the first letter of original array, rotates the values in array( moves 1st value to being last, but doesnt change the length)
puts
p new_code_name

end #end of second while 
new_alias.push(new_code_name.join)
p new_alias
final_alias.push(new_alias) #=> length value of 2 stops loop
end #end of first while



#puts final_alias.length
#p final_alias.rotate
puts
puts
puts 'YOUR NEW ALIAS IS:'
p final_alias
puts 'GOOD LUCK GUM SHOE!'
end #end of def 
agent_name