require 'json'
def main
	points = 0

	puts "Enter your name to start the quiz: "
	name = gets

	file = File.read('quiz.json')
	quiz = JSON.parse(file)

	# For each question
	quiz['questions'].each do |q|
		correct = ""
		puts q['question']

		#For each answer
		q['answers'].each do |a| 
			puts "#{a['id']}) #{a['answer']} "
			if a.include?("correct")
				correct = a['id']
			end
			
		end
		#get user input and evaluate
		puts "Your answer (a, b, c or d):"
		userAnswer = gets.strip

		if correct.eql?(userAnswer)
			points += q['points']
		end

		print "\n"
		puts "\n-------\n"
	end

	puts points
end

main