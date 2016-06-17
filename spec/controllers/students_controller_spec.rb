require 'rails_helper'

describe StudentsController, type: :controller do
  describe 'GET #index' do
    before do
      get :index
    end

    check_response_with_template('index')

    it 'returns all the students' do
      student = create(:student)
      expect(StudentRepository.all).to include(student)
    end
  end

  describe 'GET #new' do
    before do
      get :new
    end

    check_response_with_template('new')

    it 'assigns a new student to @student' do
      expect(assigns(:student)).to be_a_new(Student)
    end
  end

  describe 'GET #edit' do
    before do
      get :edit, id: 1
    end

    check_response_with_template('edit')
  end
end
