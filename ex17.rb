# store 2 variables from user in ARGV
from_file, to_file = ARGV

# Tell user we're copying the text from the first file input to the next
puts "Copying from #{from_file} to #{to_file}"

#storing the first file from user as an opened file object
in_file = open(from_file)

#storing a read-only, opened file object as variable indata
indata = in_file.read

#calling the length method on the indata object via string interpolation
puts "The input file is #{indata.length} bytes long"

#calling the exist? method from File, with the variable to_file
puts "Does the output file exist? #{File.exist?(to_file)}"
puts "Ready, hit Return to continue, CTRL-C to abort."

#pause for the user's input
$stdin.gets

#open the second file, with write access
out_file = open(to_file, 'w')

#write the read information from the first file, to the new file
out_file.write(indata)

puts "Alright, all done."

#close both files
out_file.close
in_file.close