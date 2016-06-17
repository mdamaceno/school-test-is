require 'rails_helper'

describe 'Student management', type: :feature do
  scenario 'See all the students' do
    student = create(:student)
    visit '/students'

    within '#students' do
      expect(page).to have_text(student.name)
      expect(page).to have_text(student.register_number)
    end
  end

  scenario 'creates a new student filling the form' do
    visit '/students/new'

    within '#student-form' do
      fill_in 'name', with: 'José da Silva'
      fill_in 'register_number', with: '55889633669'
      choose '1'
      expect do
        click_button 'Save'
      end.to change(Student, :count).by(1)
    end
  end
end
