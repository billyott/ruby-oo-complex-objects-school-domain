# code here!
require 'pry'


class School

    attr_accessor :name, :roster

    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(student_name,student_grade)
        if roster.key?(student_grade) == false
            roster[student_grade] = []
        end
        roster[student_grade] << student_name
    end

    def grade(grade)
        return roster[grade]
    end

    def sort
        sorted_roster = {}
        roster.each do |grade, students|
            sorted_roster[grade] = students.sort
        end
        return sorted_roster
    end

end




