class CoursesController < ApplicationController
  def index
  end

  def new
    @course = Course.new
  end

  def edit
  end

  def create
    @course = Course.new(course_params)

    respond_to do |format|
      if @course.save
        format.html { redirect_to courses_path }
      else
        format.html { render action: 'new' }
      end
    end
  end

  private

  def course_params
    params.require(:course).permit(:name, :description, :status)
  end
end
