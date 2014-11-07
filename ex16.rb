#take user input, and save it as first argument of the array
filename = ARGV.first

#tell the user that we're erasing the user input file
puts "We are going to erase #{filename}"

#tell the user to escape this process by using crtl-c, or continue
puts "If you don't want that, hit CRTRL-C (^C)."
puts "If you do want that, hit RETURN."

#pauses the program to receive the user input
$stdin.gets

puts "Opening the file..."

#opens the file, with writing rights, and saves it as a new object file
target = open(filename, 'w')


puts "Truncating the file. Goodbye!"

#emptying the file
target.truncate(5)
# 
# puts "Now I'm going to ask you for three lines."
# 
# print "line 1: "
# line1 = $stdin.gets.chomp
# print "line 2: "
# line2 = $stdin.gets.chomp
# print "line 3: "
# line3 = $stdin.gets.chomp
# 
# puts "I'm going to write these to the file."
# 
# target.write(line1)
# target.write("\n")
# target.write(line2)
# target.write("\n")
# target.write(line3)
# target.write("\n")
# 
# puts "And finally, we close it."
# target.close
# 
# 
