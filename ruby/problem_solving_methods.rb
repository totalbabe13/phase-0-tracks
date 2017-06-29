array_1 = ['ana','beth','carmen','denis','eric','fred','gary','herman']


def item_searcher (special)
  
  special.each do |name|
  #puts "This #{name}"
  'eric' == "#{name}"
      if "#{name}" == 'eric'
      puts 'ITS A MATCH!'
      end
  end
end   

item_searcher array_1
