class CoursesController < ApplicationController
  def index
  end

  def new
    @course = Course.new
  end

  def edit
  end
end
