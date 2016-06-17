require 'rails_helper'

describe ClassroomsController, type: :controller do
  describe 'GET #new' do
    before do
      @student = create(:student)
      @course = create(:course)
      get :new
    end

    check_response_with_template('new')

    it 'assigns a new classroom to @classroom' do
      expect(assigns(:classroom)).to be_a_new(Classroom)
    end
  end
end
