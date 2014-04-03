# let's ask the user to input student names into an array




def input_students
	print "Please enter the name of the students\n"
# create an empty array
	students = []
	# get the first name
	name = gets.chomp
	# while the name is not empty, repeat this code
	while !name.empty? do
		# add the student hash to the array
		
		puts "Please enter the cohort of the students"		
		# array_feb=["Feb","feb","february","February"]
		# array_march=["Mar","march","mar","March"]
		# if array_feb.select {|cohort_entry| cohort_entry == cohort}.any? 
		# 	cohort = :Feb
		# elsif array_march.select {|cohort_entry| cohort_entry == cohort}.any? 
		# 	cohort = :March
		
		cohort = gets.chomp
		if cohort.downcase.chars[0]=="m" then cohort = :March
		end
	
		puts "Please enter the age of the students"
		age = gets.chomp
		if age == "" then age = "18" 
		else age
		end

		puts "Please enter the country of birth of the students"
		country_of_birth = gets.chomp
		students << {name: name, age: age, country_of_birth: country_of_birth, cohort: cohort}
		puts "Now we have #{students.length} students. Please enter next student details or hit return to finish."
		# get another name from the user
		name = gets.chomp
	end
# return the array of students

	students
end

def inputname(name="Bob")
	@name=name
end


def print_header
	puts "The students of my cohort at Maker's Academy"
	puts "------------"
end

# def print_list(people)
# 	i = 0
# 	while (i < people.length)
# 		puts "#{i + 1}. #{people[i][:name]} (#{people[i][:cohort]} cohort)"
# 		i += 1
# 		end
# end

def print_list(people)
	i = 0
		people.each do |person|
		# if person[:name].chars.first == "A"
		# if person[:name].length < 12
		print "#{i += 1}. #{person[:name].capitalize} \t\t#{person[:age]} \t\t#{person[:country_of_birth].capitalize} \t\t(#{person[:cohort]} Cohort)\n"
		end
		# end
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

#puts students
