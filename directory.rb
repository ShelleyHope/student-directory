# let's put all the students into an array
students = [
"Steve Musgrave",
"Sroop Sunar",
"Colin Marshall",
"Josh Fail-Brown",
"Louise Lai",
"Robin Doble",
"Alex Wong",
"Scott Dimmock",
"Muhanad Al-Rubaiee",
"Shelley Hope",
# she's a particularly gifted student
"Will Hall",
"Oliver Delevingne",
"Nico",
"Apostolis",
"Stefania",
"Robert Leon",
"Emma Williams",
"Joey Wolf",
"Julie Walker"
]

def print_header
	puts "The students of my cohort at Maker's Academy"
	puts "------------"
end

def print(people)
	people.each do |person|
		puts person
	end
end

def print_footer(student)
	puts "Overall, we have #{student.length} great students"
end

# nothing happens until we call the methods:
print_header
print(students)
print_footer(students)
