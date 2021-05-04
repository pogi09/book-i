puts "Hi, write your name"
name = gets.chomp

puts"Welcome #{name}!"
puts "let's try to guess the number between 1 and 100 ? "
target_robot = rand (100) + 1 

num_count = 0

guessed_it = false

until num_count ==10 || guessed_it
	
	puts "you`ve got #{10 - num_count} attempts left" 
	user_num = gets.to_i

	num_count += 1

	if user_num < target_robot
		puts "you guess LOW !"
	elsif user_num > target_robot
		puts "you guess HIGT !"
	else user_num == target_robot
		puts "you WIN #{name}!"
		puts "You guessed my number in #{num_count} guesses!"
 		guessed_it = true
	end

end
unless guessed_it
	puts " Sorry. Tou didn`t get my number. (It was #{target_robot}. ) "
end
