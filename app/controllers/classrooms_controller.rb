class ClassroomsController < ApplicationController
  def new
    @classroom = Classroom.new
    @students = StudentRepository.all
    @courses = CourseRepository.all
  end

  def create
    @classroom = Classroom.new(classroom_params)
    @classroom.entry_at = Time.now

    respond_to do |format|
      if @classroom.save
        format.html { redirect_to new_classroom_path }
      else
        format.html { redirect_to new_classroom_path }
      end
    end
  end

  private

  def classroom_params
    params.require(:classroom).permit(:student_id, :course_id)
  end
end
