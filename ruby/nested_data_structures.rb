  
boyfriends_exhibitions = {
	
	gallery: works = { 
		
		 painting1: ['Chicago Sunset Abstract', 
		             'Oil on Canvas', 
		             '38 x 46', '2017', 
		             '$11,000'],
	  
	   painting2: ['Birds Fly Over 290',
	               'Oil on Canvas', 
	               '30 x 30', '2017', 
	               '$9,000' ],
	  
	  painting3:  ['Lake Michigan Thawing',
	               'Oil on Canvas', 
	               '60 x 45', 
	               '2017', 
	               '$12,000' ],
	 
	  drawing1:  ['Sears Tower',
	               'Charcoal on newsprint',
	               '38 x 38',
	               '2016',
	               '$1,000'],
	 
	  drawing2:   ['Study of Garfield Park Conservatory',
	               'Charcoal on newsprint', 
	               '38 x 38', 
	               '2016', 
	               '$1,000' ],
	 
	  drawing3:   ['Portrait of Mother at Field Museum',
	               'Graphite on Arches',
	               '38 x 38',
	               '2017',
	               '$3,000' ],
	 
	  sculpture1: ['Skyline',
	               'Casted Bronze',
	               'Dimensions variable',
	               '2016',
	               '$13,000'],
	 
	  sculpture2: ['The Fresh Coast',
	               'Casted Bronze',
	               'Dimensions variable',
	               '2017',
	               '$7,000']
      },
	
	
  office: furniture = { 
	           
	           desk:     ['rolodex', 'pens', 'pencils', 'calander'],
	          
	           computer:  'I Mac',
	           
	           chair:     'black with wheels',
	           
	           flatfile: ['works on paper', 
	                      'Press release', 
	                      'Posters from exhibitions']
	},
  #(key of boyfriends_gallery HASH)    
	

	storage_racks: ['Paintings', 'Drawings', 'Photographs']
   #(key of boyfriends_gallery HASH)

}#closing hash boyfriends_gallery




puts
puts 'Someone is asking for the TITLE of painting2:'
puts 
p boyfriends_exhibitions[:gallery][:painting2][0]
puts ' -  -  -  -  -  -  -  -  -  -  -'
puts

puts
puts 'Someone is asking for the MATERIALS of painting1:'
puts
p boyfriends_exhibitions[:gallery][:painting1][1]
puts ' -  -  -  -  -  -  -  -  -  -  -'
puts

puts
puts 'Someone is asking for the DIMENSIONS of sculpture2:'
puts
p boyfriends_exhibitions[:gallery][:sculpture2][2]
puts ' -  -  -  -  -  -  -  -  -  -  -'
puts


puts
puts 'Someone is asking for the YEAR of drawing3:'
puts
p boyfriends_exhibitions[:gallery][:drawing3][3]
puts ' -  -  -  -  -  -  -  -  -  -  -'
puts


puts
puts 'Someone is asking for the PRICE of sculpture1:'
puts
p boyfriends_exhibitions[:gallery][:sculpture1][4]
puts ' -  -  -  -  -  -  -  -  -  -  -'
puts


puts
puts 'The new intern is asking whats in the office:'
puts
p boyfriends_exhibitions[:office]
puts ' -  -  -  -  -  -  -  -  -  -  -'
puts


puts
puts 'The new intern is asking whats in the flatfile:'
puts
p boyfriends_exhibitions[:office][:flatfile]
puts ' -  -  -  -  -  -  -  -  -  -  -'
puts

puts 'The new intern is asking what is stored in the racks:'
puts
p boyfriends_exhibitions[:storage_racks].each  {|medium| puts "This is where the #{medium} are stored."}
puts ' -  -  -  -  -  -  -  -  -  -  -'
puts


puts
puts 'The new intern is asking where are the photographs stored:'
puts
p boyfriends_exhibitions[:storage_racks].select! {|medium| medium == 'Photographs' }
puts ' -  -  -  -  -  -  -  -  -  -  -'
puts


puts
puts 'The gallery director is looking for the press releases:'
puts
p boyfriends_exhibitions[:office][:flatfile].reject! {|papers| papers != "Press release" }
puts ' -  -  -  -  -  -  -  -  -  -  -'
puts



#p boyfriends_gallery[:gallery]
#puts
#p boyfriends_gallery[:office]
#puts
#p boyfriends_gallery[:storage_racks]