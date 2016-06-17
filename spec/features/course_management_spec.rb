require 'rails_helper'

describe 'Course management', type: :feature do
  scenario 'See all the courses' do
    course = create(:course)
    visit '/courses'

    within '#courses' do
      expect(page).to have_text(course.name)
      expect(page).to have_text(course.description)
    end
  end

  scenario 'creates a new course filling the form' do
    visit '/courses/new'

    within '#course-form' do
      expect do
        fill_in Course.human_attribute_name('name'), with: 'Informática'
        fill_in Course.human_attribute_name('description'), with: 'Aula sobre o computador'
        within '#status' do
          choose 'course_status_1'
        end
        click_button 'Save'
      end.to change(Course, :count).by(1)
    end

    expect(current_path).to eq('/courses')
  end
end
