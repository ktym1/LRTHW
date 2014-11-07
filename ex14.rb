user_name = ARGV.first
prompt = '>>>>'
age, grey  = ARGV

puts "Hi #{user_name}."
puts "I'd like to ask you a few questions."
puts "Do you like me #{user_name}?", prompt
likes = $stdin.gets.chomp

puts "Where do you live #{user_name}?", prompt
lives = $stdin.gets.chomp

puts "What kind of computer do you have?", prompt
computer = $stdin.gets.chomp

# Using ARGV twice means that arguments go in sequential order. 'ARGV.first's' argument will run the first time everytime ARGV is called (thus, replacing 'age').
puts "Are you #{age} years old with #{grey} hair?" 
# combining ARGV and gets.chomp isn't that useful
traits = $stdin.gets.chomp

puts """
Alright, so you said #{likes} about liking me.
You live in #{lives}. Not sure where that is.
And you have a #{computer} computer. Nice.

You also have #{traits}.
"""