class StudentsController < ApplicationController
  
  def index
    @students = Student.all
  end

  def show
    @student = Student.find_by(id: params[:id])
  end
  def new
  end
  def create
    session[:student_params] = params.inspect
    redirect_to new_student_path
  end

end
