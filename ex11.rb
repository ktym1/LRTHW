#note, you need to have 'gets' right after the printed question for ruby to associate the variable to the printed string.
print "How old are you?"
age = gets.chomp
print "How tall are you?"
height = gets.chomp
print "How much do you weight?"
weight = gets.chomp

puts "So, you're #{age} old, #{height} tall and #{weight} heavy."



print "Where did you go today?"
question = gets.chomp

print "How long was it?"
answer = gets.chomp.to_i

puts "What did you do today? #{question}. How long was it? #{answer} minutes."
 
