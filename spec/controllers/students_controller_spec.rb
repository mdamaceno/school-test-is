require 'rails_helper'

describe StudentsController, type: :controller do
  describe 'GET #index' do
    before do
      get :index
    end
    it { is_expected.to respond_with :ok }
    it { is_expected.to respond_with_content_type :html }
    it { is_expected.to render_with_layout :application }
    it { is_expected.to render_template :index }
  end

  describe 'GET #new' do
    before do
      get :new
    end
    it { is_expected.to respond_with :ok }
    it { is_expected.to respond_with_content_type :html }
    it { is_expected.to render_with_layout :application }
    it { is_expected.to render_template :new }
  end
end
