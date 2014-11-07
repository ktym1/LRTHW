name = 'Zed A. Shaw'
age = 35 
height = 74
weight = 180
eyes = 'Blue'
teeth = 'White'
hair = 'Brown'
imperial_height = height * 2.54
imperial_weight = weight * 0.45

puts "Let's talk about #{name}."
puts "He's #{height} inches tall."
puts "He's #{weight} pounds heavy."
puts "Actually that's not too heavy."
puts "He's got #{eyes} eyes and #{hair} hair."
puts "His teeth are usually #{teeth} depending on the coffee."

puts "If I add #{age}, #{height}, and #{weight} I get #{age + height + weight}."

puts "Imperial height is #{imperial_height}cm."
puts "Imperial weight is #{imperial_weight}kg."

def inch_to_cm(height)
	height * 2.54
end
metric_height = inch_to_cm(74)
puts metric_height
