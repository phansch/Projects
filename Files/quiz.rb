require 'json'

def main
	points = 0
	maxpoints = 0

	system('clear')

	file = File.read('quiz.json')
	quiz = JSON.parse(file)


	# For each question
	quiz['questions'].each do |q|
		puts "Welcome to #{quiz['name']}. Press q to quit at any time."
		puts q['question']

		#For each answer
		correct = ""
		q['answers'].each do |a| 
			puts "#{a['id']}) #{a['answer']} "
			if a.include?("correct")
				correct = a['id']
			end
			
		end

		#get user input and evaluate
		print "Your answer (a, b, c or d): "
		userAnswer = gets.strip

		if correct.eql?(userAnswer)
			points += q['points'] # sum up points for correct answers
		elsif userAnswer.eql?('q')
			break # Quit the program when the user enters 'q'
		end
		maxpoints += q['points'] #sum up point total

		puts "\n-------\n\n"
		system('clear')
	end

	puts "Your result: #{points} of #{maxpoints} points."
end

main