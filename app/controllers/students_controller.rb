class StudentsController < ApplicationController
    def index
        students = Student.all
        render json: students
    end

    def by_grade
        students = Student.all
        students_ordered = students.order("grade DESC")
        render json: students_ordered
    end

    def highest_grade
        students = Student.all
        students_ordered = students.sort_by(&:grade)
        highest_grade = students_ordered.last
        render json: highest_grade
    end
end
