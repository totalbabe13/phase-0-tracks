
# Once you've built it, print a few individual pieces of deeply nested 
# data from the structure, showing that you know how to use multiple 
# indexes or hash keys (or both) to access nested items. Try to demonstrate 
# a few different types of access.

highway666 = {

	mazda:['Sally','Greg','Bob','Alma'],
	
	toyota:['Jade', 'Lauren','JP'],
	
	honda: ['Emily','Dana',"Cory"],
	
	chevy:['John','Marina','Tony','Rachel','Sofia'],
	
	ford: ['Ron','Chelsea','Mike','Hope','Ben']
}

# find Alma
p highway666[:mazda][3]
puts

# Find Ron and Chelsea
p highway666[:ford][0..1]
puts

# Find Emily
p highway666[:honda][0]
puts

# Find Sofia
p highway666[:chevy][4]
puts

highway666[:chevy].each {|person| p person if person == "Rachel" }
puts

p highway666[:toyota].select { |person| person == 'JP' } 
puts

p highway666[:toyota].reject {|person| person == 'JP'}
puts


