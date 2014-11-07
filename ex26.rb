module Ex25

	  # This function will break up words for us.
	  def Ex25.break_words(stuff)
		words = stuff.split(' ')
		return words
	  end

	  # Sorts the words.
	  def Ex25.sort_words(words)
		return words.sort
	  end

	  # Prints from the end of the array, moving forwards. [-3,-2,-1]
	  def Ex25.print_first_word(words)
		word = words.pop(3)
		puts word
	  end

	  # Prints the last word after popping it off.
	  def Ex25.print_last_word(words)
		word = words.pop
		puts word
	  end

	  # Takes in a full sentence and returns the sorted words.
	  def Ex25.sort_sentence(sentence)
		words = Ex25.break_words(sentence)
		return Ex25.sort_words(words)
	  end

	  # Prints the first and last words of the sentence.
	  def Ex25.print_first_and_last(sentence)
		words = Ex25.break_words(sentence)
		Ex25.print_first_word(words)
		Ex25.print_last_word(words)
	  end

	  # Sorts the words then prints the first and last one.
	  def Ex25.print_first_and_last_sorted(sentence)
		words = Ex25.sort_sentence(sentence)
		Ex25.print_first_word(words)
		Ex25.print_last_word(words)
	  end
end


	puts "Let's practice everything."
	puts 'You\'d need to know \'bout escapes with \\ that do \n newlines and \t tabs.'

poem = <<END
	\tThe lovely world
	with logic so firmly planted
	cannot discern \n the needs of love
	nor comprehend passion from intuition
	and requires an explanation
	\n\t\twhere there is none.

END

	puts "--------------"
	puts poem
	puts "--------------"



	five = 10 - 2 + 3 - 6
	puts "This should be five: #{five}"

	def secret_formula(started)
	  jelly_beans = started * 500
	  jars = jelly_beans / 1000
	  crates = jars / 100
	  return jelly_beans, jars, crates
	end


	start_point = 10000
	beans, jars, crates = secret_formula(start_point)

	puts "With a starting point of: #{start_point}"
	puts "We'd have #{beans} beans, #{jars} jars, and #{crates} crates."

	start_point = start_point / 10

	sentence = "All good things come to those who wait."
	
	#split the sentence into an array
	words = Ex25.break_words(sentence)
	puts words
	
	#sort the array by alphabet
	sorted_words = Ex25.sort_words(words)
	puts sorted_words
	
	#prints an array starting from the end
	Ex25.print_first_word(words)

	#continuing on from the 'popped' array, prints the last word. 
	#the modified array is held in memory by the interpreter 	
	Ex25.print_last_word(words)

	#printing the last 3 words of the sorted by alphabet array 	
	Ex25.print_first_word(sorted_words)
	
	#printing the 4th last word of the sorted by alphabet array 
	#since the modified array is held in memory by the interpreter 		 		
 	Ex25.print_last_word(sorted_words)
 	
	#take the sentence, break it into an array, then sort by alphabet
	#assign to the variable sorted_words
	sorted_words = Ex25.sort_sentence(sentence)

	
	Ex25.print_first_and_last(sentence)
	Ex25.print_first_and_last_sorted(sentence)
