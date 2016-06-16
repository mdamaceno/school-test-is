require 'rails_helper'

RSpec.describe Student, type: :model do
  it 'has a valid constructor' do
    expect(Student.new).to be_valid
  end
end
