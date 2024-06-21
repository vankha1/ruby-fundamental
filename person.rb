class Person
    @@count = 0
    def initialize(name, age)
    @@count += 1
      @name = name
      @age = age
    end

    def name
        @name
    end

    def name=(name)
        @name = name
    end

    def age
        @age
    end

    def age=(age)
        @age = age
    end

    def introduce
        puts "My name is #{@name}. I'm #{@age} years old"
    end

    def self.total_count
        puts "Total number of people is #{@@count}"
    end

    def handleError
        begin
          raise Exception.new "Person, Person, Person"
        rescue Exception => e
            puts e.message
        end
    end
end

def printPersonArray(people)
    # Traverse array
    people.each do |person|
        person.introduce
    end
end

a = Person.new('Van Kha', 21)
puts a.name
a.introduce
Person.total_count
a.handleError

# length of person array
num = 20

# init array
people = num.times.map { |i| Person.new("Person#{i + 1}", rand(10..90))}

puts "------All people---------"
printPersonArray(people)

# Filter by age < 18
child_people = people.select { |person| person.age < 18 }

puts "------Child people---------"
printPersonArray(child_people)

# Delete age < 18
adult_people = people.delete_if { |person| person.age < 18 }

puts "------Adult people---------"
printPersonArray(adult_people)

# Sort by age
inc_age_people = people.sort { |a, b| a.age <=> b.age }
des_age_people = people.sort { |a, b| -(a.age <=> b.age) }

puts "------Sorted people---------"
printPersonArray(inc_age_people)

puts "------Sorted des people---------"
printPersonArray(des_age_people)

# Delete at specific index
people.delete_at(0)

puts "------Deleted first person---------"
printPersonArray(people)

# Max age and min age
min_age_person = people.min_by { |person| person.age }
max_age_person = people.max_by { |person| person.age }

puts "------Min age person---------"
puts min_age_person.introduce

puts "------Max age person---------"
puts max_age_person.introduce

# Get ages

# While loop statement
i = 0
while i < people.length
    people[i].age += 1
    i += 1
end

# Until loop statement
i = 0
until i >= people.length
    people[i].age += 1
    i += 1
end

# Do - while loop statement
i = 0
begin 
    people[i].age += 1
    i += 1
end while i < people.length

# # For loop, avoid infinite loop
i = 0
for i in 0...people.length do
    people[i].age += 1
end


people.each do |person|
    person.age += 1
end

arr_map = people.map { |person| person.age += 1 }

# No loop -> get all person's age

ages = people.map { |person| person.age}
puts "----- All ages ---------"
puts ages

# Concat array
num2 = 20
people_2 = num2.times.map { |i| Person.new("Person#{i + 21}", rand(10..90))}

# concat_array = people.concat(people_2)
concat_array = people + people_2
puts "----- Concat array ------"
printPersonArray(concat_array)