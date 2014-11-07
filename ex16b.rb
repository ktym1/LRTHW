filename = ARGV.first

puts "We are going to erase #{filename}"

puts "If you don't want that, hit CRTRL-C (^C)."
puts "If you do want that, hit RETURN."

$stdin.gets

puts "Opening the file..."

target = open(filename, 'w')

puts "Truncating the file. Goodbye!"

target.truncate(5)

puts "Now I'm going to ask you for three lines."

print "line 1: "
line1 = $stdin.gets.chomp
print "line 2: "
line2 = $stdin.gets.chomp
print "line 3: "
line3 = $stdin.gets.chomp

puts "I'm going to write these to the file."

target.write("#{line1}\n#{line2}\n#{line3}\n")

puts "And finally, we close it."
target.close

# write(string) → integer
# Writes the given string to ios. The stream must be opened for writing. 
# If the argument is not a string, it will be converted to a string using to_s. Returns the number of bytes written.
# 
# count = $stdout.write("This is a test\n")
# puts "That was #{count} bytes of data"
# produces:
# 
# This is a test
# That was 15 bytes of data

# open with 'w' mode
# "w": Write-only, truncates existing file to zero length or creates a new file for writing.
# => no need to call .truncate()