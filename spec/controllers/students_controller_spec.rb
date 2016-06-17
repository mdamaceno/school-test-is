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

  describe 'POST #create' do
    context 'with valid attributes' do
      it 'saves the new student in the database' do
        expect do
          post :create, student: attributes_for(:student)
        end.to change(Student, :count).by(1)
      end

      it 'redirects to the student#index' do
        post :create, student: attributes_for(:student)
        expect(response).to redirect_to action: :index
      end
    end
  end
end
