require 'rails_helper'

describe CoursesController, type: :controller do
  describe 'GET #index' do
    before do
      get :index
    end

    check_response_with_template('index')

    it 'returns all the courses' do
      course = create(:course)
      expect(CourseRepository.all).to include(course)
    end
  end

  describe 'GET #new' do
    before do
      get :new
    end

    check_response_with_template('new')

    it 'assigns a new course to @course' do
      expect(assigns(:course)).to be_a_new(Course)
    end
  end

  describe 'POST #create' do
    context 'with valid attributes' do
      it 'saves the new course in the database' do
        expect do
          post :create, course: attributes_for(:course)
        end.to change(Course, :count).by(1)
      end

      it 'redirects to the course#index' do
        post :create, course: attributes_for(:course)
        expect(response).to redirect_to action: :index
      end
    end
  end

  describe 'GET #edit' do
    before do
      get :edit, id: 1
    end

    check_response_with_template('edit')
  end
end
