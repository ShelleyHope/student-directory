# let's ask the user to input student names into an array
def input_students
	print "Please enter the names of the students\nTo finish, just hit return twice\n"
# create an empty array
	students = []
	# get the first name
	name = gets.chomp
	# while the name is not empty, repeat this code
	while !name.empty? do
		# add the student hash to the array
		students << {name: name, cohort: :march}
		puts "Now we have #{students.length} students"
		# get another name from the user
		name = gets.chomp
	end
# return the array of students

	students
end


def print_header
	puts "The students of my cohort at Maker's Academy"
	puts "------------"
end

def print_list(people)
	i = 0
	people.each do |person|
		if person[:name].chars.first == "A"
		puts "#{i += 1} #{person[:name]} (#{person[:cohort]} cohort)"
		end
	end
end
# below is an alternative method using with_index to number each student
# def print_list(people)
# 	people.each_with_index do |person, index|
# 		puts "#{index+1}. #{person[:name]} (#{person[:cohort]} cohort)"
# 	end
# end

def print_footer(student)
	puts "Overall, we have #{student.length} great students"
end

# nothing happens until we call the methods:
students = input_students
print_header
print_list(students)
print_footer(students)
