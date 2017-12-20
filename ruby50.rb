BEGIN{
	# begin block
	puts "Welcome to sign in system."
	puts "Enter add to sign in for class with ID."
	puts "Enter delete to delete a record."
	puts "Enter check to check the list."
	#puts "Enter update to modify a record with ID"
	puts "Enter exit to save attandence file and exit the system."
}

END{
	# end block
	puts "Successfully exit."
}

module Util
	def Util.check(hashad)
		time = Time.new
		count = 0
		puts "*****************************"
		puts "Student ID         time"
		hashad.each do |key, value|
			puts "#{key}       #{value}"
			count = count + 1
		end
		puts "\nCurrent time #{time.strftime("%Y-%m-%d %H:%M:%S")}"
		puts "Totally #{count} students've signed in."
		puts "*****************************\n"

	end

	def Util.save(hashad)
		time = Time.new
		file = File.new(time.strftime("%Y%m%d"), "w+")
		if file
			file.syswrite("\n")
			file.syswrite(time.strftime("%Y-%m-%d %H:%M:%S"))
			file.syswrite("\n")
			
			count = 0
			hashad.each do |key, value|
				out = "#{key}   #{value}\n"
				file.syswrite(out)
				count = count + 1
			end

			out = "Totally #{count} students've signed in."
			file.syswrite(out)
			file.syswrite("\n")
			
			puts "Successfully save the sign in record."

		else
			puts "Error in opening file!"
		end

	end

end

time = Time.new
#puts time.strftime("%Y-%m-%d %H:%M:%S")

attendance = { };

command = " "

while command != "exit" do
	command = gets.chomp.downcase
	#puts "while"
    case command
	when "add"
		puts "\nplease enter your student ID."
		id = gets.chomp
		puts id
		curtime = time.strftime("%Y-%m-%d %H:%M:%S")
		attendance[id] = curtime 
		puts "Sign in successfully"
		puts " "

	when "delete"
		puts "please enter the ID to be deleted."
		id = gets.chomp
		if attendance.has_key? id
			attendance.delete(id)
			puts "delete successfully."
			puts ""
		else
			puts "Failed to delete"
			puts " "
		end

	when "check"
		Util.check(attendance)

	when "update"

	when "exit"
		Util.save(attendance)

	end

end

