def agent_name
  
  agent = 'Leonardo' 
  
  number_of_letters = agent.length 
  
  code_array1 = agent.downcase.split('')
  
  new_code_name = []
  
  
  if code_array1[0] != 'a'||'e'||'i'||'o'||'u'
    first_letter = code_array1.shift
    puts code_array1
    puts
    puts first_letter
    puts
    new_letter = first_letter.next
    puts new_letter
    puts
    new_code_name.push new_letter
    puts new_code_name
    
    
  end  
end
agent_name