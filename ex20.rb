# selecting the first file from the command line by the user
input_file = ARGV.first

#create a method that puts out an argument, and has a read function called on the argument.
def print_all(f)
	puts f.read
end

#create a method that has a seek/rewind function from the beginning called on the argument.
# the seek() function is dealing in bytes, not lines.
def rewind(f)
	f.seek(0)
end

# create a method that prints out an argument 'line count';
# call get user input function and remove newline function on argument f.
def print_a_line(line_count, f)
	puts "#{line_count}, #{f.gets.chomp}"
end

#create a current_file variable which stores an open function calling on the input_file, from command line
current_file = open(input_file)

puts "First let's print the whole file:\n"

# sending a message to print_all method with a current_file as argument
print_all(current_file)

# this is the terminal output if we just printed an open file, and didn't read the contents
print "#{current_file}\n"

puts "Now let's rewind, kind of like a tape."

#sending a message to the rewind method, with current_file object as the argument
rewind(current_file)

puts "Let's print three lines:"

# Which current file is being submitted as an argument. The original or the rewound version?
current_line = 1

print_a_line(current_line, current_file)

current_line += 1
print_a_line(current_line, current_file)

current_line += 1
print_a_line(current_line, current_file)

#sending a message to print_a_line method, submitting 1 as first argument;
# submitting the rewound current_file object as the 2nd argument; 

# 'gets' accepts a single line of data from the standard input. 'chomp' removes the newline at the end of that single line.
# each time we're calling current_file, we're moving 1 line down the file; a file is like
# an old tape drive that moves forward, then needs to be rewound. 