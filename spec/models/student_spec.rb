require 'rails_helper'

RSpec.describe Student, type: :model do
  it 'has a valid constructor' do
    expect(build(:student)).to be_valid
  end

  it 'is invalid if no name' do
    expect(build(:student, name: nil)).to_not be_valid
  end

  it 'is invalid if no register_number' do
    expect(build(:student, register_number: nil)).to_not be_valid
  end

  it 'is invalid if no status' do
    expect(build(:student, status: nil)).to_not be_valid
  end
end
