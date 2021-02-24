# code here!

require 'pry'

class School 

    attr_accessor :name
    attr_reader :roster

    def initialize(name)
        @name = name
        @roster = {}

    end

    def add_student(student, grade)
        if @roster.include?(grade) == false
            @roster[grade] = []
        end

        @roster[grade] << student

    end


    def grade(grade)
        return @roster[grade]
    end

    #binding pry

    def sort
        new_hash = {}
        # This is ugly and I don't like it
        @roster.each { |key, value | 
            new_hash[key] = value.sort
            @roster[key].sort
        }
        return new_hash
    end



end


r_school = School.new("George M Low School for kids who can't read good")
r_school.add_student("Ben Stiller", 9)
#binding.pry
r_school.add_student("Hansel", 8)
