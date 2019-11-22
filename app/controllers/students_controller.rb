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
    # model
    student = Student.create(word_params)
    redirect_to '/students'
  end

  private
  
  def word_params
    params.require(:student).permit(:first_name, :last_name)
  end

end
