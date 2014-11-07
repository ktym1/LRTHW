def add(a, b)
	puts "ADDING #{a} + #{b}"
	return a + b
end

def subtract(a, b)
	puts "SUBTRACTING #{a} - #{b}"
	return a - b
end

def multiply(a, b)
	puts "MULTIPLYING #{a} * #{b}"
	return a * b
end

def divide(a, b)
	puts "DIVIDING #{a} / #{b}"
	return a / b
end

puts "Let's do some math with just functions!"

age = add(30, 5)
height = subtract(78, 4)
weight = multiply(90, 2)
iq = divide(100, 2)

puts "Age: #{age}, Height: #{height}, Weight: #{weight}, IQ: #{iq}"

puts "Here is a puzzle."

what = add(age, subtract(height, multiply(weight, divide(iq, 2))))

puts "That becomes: #{what}. Can you do it by hand?"
# --------------------------------------------------------------------
# def testing(a)
# 	puts "#{a} is being returned"
# 	return a
# end
# 
# y = testing('TEXT')
# 
# puts "I'm using a variable to return this text: #{y}"
# --------------------------------------------------------------------

# what = add(age, subtract(height, multiply(weight, divide(iq, 2))))
# 
# 
# x = divide(iq, 2)
# what = add(age, subtract(height, multiply(weight, x)))
# 
# x = divide(iq, 2)
# y = multiply(weight, x)
# what = add(age, subtract(height, y))
# 
# x = divide(iq, 2)
# y = multiply(weight, x)
# z = subtract(height, y)
# what = add(age, z)

x = iq / 2
y = weight * x
z = height - y
what = age + z

puts "That becomes: #{what} by hand."