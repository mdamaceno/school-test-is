class StudentsController < ApplicationController
  def index
  end

  def new
    @student = Student.new
  end

  def edit
  end
end
