class StudentsController < ApplicationController
  
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])

  end

  def new

  end 


  def create
    @white = params.require(:student).permit(:first_name, :last_name)
    @student = Student.create(@white)
    redirect_to student_path(@student.id)
  end 
  
end
