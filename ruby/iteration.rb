
def spacer
	puts " = "* 20
end	
spacer
#  = = = = = = = = = = = = = = = = = = = = = = = = = = = =

sunset_colors = ['violette','red','orange','yellow','blue']

#  = = = = = = = = = = = = = = = = = = = = = = = = = = = =

dinner = {
	quinoa:      "1 cup",
	broth:       "2 cups",
	salt:        "1 tsp",
	coconut_oil: "i tbl spoon"

}
#  = = = = = = = = = = = = = = = = = = = = = = = = = = = =

puts "original array:"
p sunset_colors
puts
spacer
puts "original hash:"
p dinner
puts

#  = = = = = = = = = = = = = = = = = = = = = = = = = = = =
#ARRAY ITERATION

spacer
puts "using .each method on an array:"
puts
#iterate through an array using .each method
sunset_colors.each {|color| p "#{color.capitalize} is a color in the sunset" }
#prints out array item interpolated in string, but leaves original array intact
puts

spacer
puts "using .map method on an array where new array is printed with modified items:"
puts
#iterate through an array using .map method
colors_explained = sunset_colors.map { |color| "#{color.capitalize} is a color in the sunset" }
p colors_explained
# .map stored modified items in new array "colors explained", original array remains intact
puts 

spacer
puts "using .map! method on an array: (sunset to night)"
puts
sunset_colors.map! {|color| color = 'BLACK'}
p sunset_colors
# .map modifies data in orginal array and returns new values
puts

#  = = = = = = = = = = = = = = = = = = = = = = = = = = = =
#HASH ITERATION


spacer
puts "using .each method on an hash:"
puts
dinner.each {|ingredient,amount| p "Use #{amount} of #{ingredient}."}
puts
spacer


#  = = = = = = = = = = = = = = = = = = = = = = = = = = = =
