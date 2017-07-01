array_1 = [24,7,0,420,666,7,11,69]

#release 0
def special_method(array_1,item)
i = 0
while array_1[i] != item
i += 1
   if array_1[i] == item
     p i
    break
   end
     
    end 
  end
 
 special_method(array_1,420)

 # - - - - - - - - - - - - - - - - - - 
 # Release 1 (fibonnaci exercise)

 def fibonacci(fib)
value1 = 0 
value2 = 1
fib.times do 
  temp = value1
  value1 = value2
  value2 = temp + value2
end
  return value1
end
  
array_1 =[]
5.times do |fib|
  call_method = fibonacci(fib)
  #puts call_method
  puts 
  array_1.push call_method
  #puts array_1
end

puts array_1