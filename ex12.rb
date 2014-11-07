print "Give me a number: "
number = gets.chomp.to_i

bigger = number * 100
puts "A bigger number is #{bigger}."

print "Give me another number: "
another = gets.chomp
number = another.to_i

smaller = number / 100
puts "A smaller number is #{smaller}."

print "Will you give me money?"
answer = gets.chomp

print "How about $103.4?"
reply = gets.chomp.to_f
refund = reply * 0.10

puts "Actually, I didn't need that much. Here's the leftover amount: #{refund}."
#How do I avoid the refund amount to have multiple decimal places? You would need to use a decimal.

