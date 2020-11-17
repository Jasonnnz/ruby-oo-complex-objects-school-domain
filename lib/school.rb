class School
    attr_accessor :name, :roster

    def initialize(name,roster = {})
        @name = name
        @roster = roster
    end

    def add_student(student_name,student_grade)
        @student_name = student_name
        @student_grade = student_grade
        if @roster.has_key?(@student_grade)
            @roster[@student_grade] << @student_name
        else
            @roster[@student_grade] = []
            @roster[@student_grade] << @student_name
        end
    end

    def roster
        @roster
    end

    def grade(grade)
        roster[grade]
    end

    def sort
        @roster.each do |key,value|
            @roster[key] = value.sort
        end
    end
end
