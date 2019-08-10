class StudentsController < ApplicationController
    def index
        @students = Student.all
    end

    def show
        set_student
    end

    def new
    end

    def create
        @student = Student.create(student_params)

        redirect_to @student
    end

    def edit
        set_student
    end

    def update
        set_student
        @student.update(student_params)

        redirect_to @student
    end

    private

    def set_student
        @student = Student.find(params[:id])
    end

    def student_params
        params.require(:student).permit(:first_name, :last_name)
    end
    
end