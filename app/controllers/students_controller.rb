class StudentsController < ApplicationController
  
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
    @student = Student.new
  end

  def create
    white = params[:student].permit(:first_name, :last_name)
    redirect_to student_path(Student.create(white).id)
  end

end
