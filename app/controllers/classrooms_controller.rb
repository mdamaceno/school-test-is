class ClassroomsController < ApplicationController
  def new
    @classroom = Classroom.new
  end

  def create
    @classroom = Classroom.new(classroom_params)

    respond_to do |format|
      if @classroom.save
        format.html { redirect_to new_classrooms_path }
      else
        format.html { render action: 'new' }
      end
    end
  end

  private

  def classroom_params
    params.require(:classroom).permit(:student_id, :course_id)
  end
end
