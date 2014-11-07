# Remember: The variables in your function are not connected to the variables in your script

def cheese_and_crackers(cheese_count, boxes_of_crackers)
	puts "You have #{cheese_count} cheeses!"
	puts "You have #{boxes_of_crackers} boxes of crackers!"
	puts "Man that's enough for a party!"
	puts "Get a blanket.\n"
end

puts "We can just give the function numbers directly:"
cheese_and_crackers(20, 30)

puts "OR, we can use variables from our script:"
amount_of_cheese = 10
amount_of_crackers = 50

cheese_and_crackers(amount_of_cheese, amount_of_crackers)

puts "We can even do math inside too:"
cheese_and_crackers(10 + 2, 5 + 6)

puts "And we can combine the two, variables and math:"
cheese_and_crackers(amount_of_cheese + 100, amount_of_crackers = 1000)

def halloween_scare(movie, creature, ride)
	puts "Going on the #{ride} ride, reminded me it's just as scary seeing the movie #{movie},
	which has a #{creature}."
end

puts "What's your favorite scary movie?"
user_movie = gets.chomp

halloween_scare("Night on Elm Street","serial killer", "Leviathon")
halloween_scare("Halloween " + "3", "serial" + " killer", "Leviathon")
halloween_scare(user_movie, "serial killer", "Leviation")

