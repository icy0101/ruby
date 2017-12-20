BEGIN{
	# begin block
	puts "Welcome to sign up system."
	puts "Enter add to sign up for class with ID and time."
	puts "Enter delete to delete a record."
	puts "Enter check to check the list."
	puts "Enter update to modify a record with ID"
	puts "Enter exit to save attandence file and exit the system."
}

END{
	# end block
	puts "Successfully exit."
}

attandence = { 201530541173 => "15:03", 201530541174 => "16:03" };

command = gets.chomp.downcase

case command
when "add"
	puts "please enter your student ID."
	id = gets.chomp
	
when "delete"

when "check"

when "update"

when "exit"

