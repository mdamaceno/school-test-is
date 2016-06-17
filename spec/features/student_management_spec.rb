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
      expect do
        fill_in Student.human_attribute_name('name'), with: 'José da Silva'
        fill_in Student.human_attribute_name('register_number'), with: '55889633669'
        within '#status' do
          choose 'student_status_1'
        end
        click_button I18n.t('template.default.save')
      end.to change(Student, :count).by(1)
    end

    expect(current_path).to eq('/students')
  end
end
