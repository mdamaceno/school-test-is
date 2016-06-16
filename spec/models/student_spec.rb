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

  it 'is invalid if name has more than 45 chars' do
    expect(build(:student, name: Faker::Lorem.characters(46))).to_not be_valid
  end

  it 'is invalid if register_number has more than 45 chars' do
    expect(build(:student, register_number: Faker::Lorem.characters(46))).to_not be_valid
  end

  it 'is invalid if status is not numeric' do
    expect(build(:student, status: 'aaa')).to_not be_valid
  end

  it 'is invalid if status is not integer' do
    expect(build(:student, status: 1.5)).to_not be_valid
  end
end
