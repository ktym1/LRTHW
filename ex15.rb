# Take in an argument from the command line and store it in ARGV. Take the first argument from the ARGV array.
filename = ARGV.first

#using the open method, we're opening the filename object, which ARGV unpacks to the first in its array
txt = open(filename)

#uses string interpolation to print out the first argument in the ARGV array
puts "Here's your file #{filename}:"

#use the read method on an opened object, then printing out what it reads 
print txt.read
txt.close

# getting input from user, applying standard input method on it, and chomping the newline
print "Type the filename again: "
file_again = $stdin.gets.chomp

txt_again = open(file_again)

print txt_again.read
txt_again.close

"""
Does txt = open(filename) return the contents of the file?
No, it doesn't. It actually makes something called a 'file object.'
 You can think of a file like an old tape drive that you saw on mainframe computers in the 1950s, 
 or even like a DVD player from today. You can move around inside them, 
 and then 'read' them, but the DVD player is not the DVD the same way the file object is not the file's contents.
 """