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
  	white_list_details = params[:student].permit(:first_name, :last_name)
  	student = Student.create(white_list_details)

  	redirect_to student_path(student)
  end

end
