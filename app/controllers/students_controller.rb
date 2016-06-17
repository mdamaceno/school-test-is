class StudentsController < ApplicationController
  def index
  end

  def new
    @student = Student.new
  end

  def edit
  end

  def create
    @student = Student.new(student_params)

    respond_to do |format|
      if @student.save
        format.html { redirect_to students_path }
      else
        format.html { render action: 'new' }
      end
    end
  end

  private

  def student_params
    params.require(:student).permit(:name, :register_number, :status)
  end
end
