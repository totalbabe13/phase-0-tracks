
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

#4. A method that will remove items from a data structure until the 
#   condition in the block evaluates to false, then stops (you may 
#   not find a perfectly working option for the hash, and that's okay).

#  = = = = = = = = = = = = = = = = = = = = = = = = = = = =

example_array = [1,3,7,0,6,1,44,28,93,31,77,62]
#1. A method that iterates through the items, deleting any that
#   meet a certain condition (for example, deleting any numbers that are less than 5).
example_array.delete_if {|number| number.even? }
p example_array
puts 
puts

example_hash = {
	house_1: "blue",
	house_2: "green",
	house_3: "white",
	house_4: "yellow",
	house_5: "red"
}

p example_hash.delete_if {|house, color| color == "blue" }

#  = = = = = = = = = = = = = = = = = = = = = = = = = = = =

spacer
array_ray_ray = [0,0,0,1,0,9,10,88,7,6,66,4,2,3,5]
#2. A method that filters a data structure for only items that 
#   do satisfy a certain condition (for example, keeping any numbers that are less than 5).
array_ray_ray.keep_if  { |number| number < 5 }
p array_ray_ray
puts
puts

numbers = {
	one:   1,
	two:   2,
	three: 3,
	four:  4,
	five:  5
}
p numbers.keep_if  { |word,number| number.even? }

#  = = = = = = = = = = = = = = = = = = = = = = = = = = = =

spacer
mixed_bag = [7,'chap stick',11,'sunglasses',420,'cell phone',69,'wallet',666,'keys']
#3. A different method that filters a data structure for only items 
#   satisfying a certain condition -- Ruby offers several options!
mixed_bag.select { |item| p item if item.class == String }
puts
puts


shapes = {
    circle: 2,
    squares: 8,
    triangles: 7,
    octogon: 3,
    pentagon: 5
}

shapes.select { |shape, amount| p shape if amount >= 5 }

#  = = = = = = = = = = = = = = = = = = = = = = = = = = = =

spacer
a = [1, 2, 3, 4, 5, 0]

#4. A method that will remove items from a data structure until the 
#   condition in the block evaluates to false, then stops (you may 
#   not find a perfectly working option for the hash, and that's okay).
p a.drop_while {|i| i < 3 }  
puts
puts

#sa.drop_while {|i| i < 3 }
shapes = {
    circle: 2,
    squares: 8,
    triangles: 7,
    octogon: 3,
    pentagon: 5
}

p shapes.reject! {| shape, amount | amount.odd? }
	
#end
puts









