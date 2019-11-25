class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
    @student = Student.new()
  end

  def create
    params.permit!
    @student = Student.create(params[:student])
    redirect_to '/students'
  end

end
