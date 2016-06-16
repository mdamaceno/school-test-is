require 'rails_helper'

RSpec.describe Course, type: :model do
  it 'has a valid model' do
    expect(build(:course)).to be_valid
  end

  it 'is invalid if no name' do
    expect(build(:course, name: nil)).to_not be_valid
  end

  it 'is invalid if no status' do
    expect(build(:course, status: nil)).to_not be_valid
  end

  it 'is invalid if name has more than 45 chars' do
    expect(build(:course, name: Faker::Lorem.characters(46))).to_not be_valid
  end

  it 'is invalid if description has more than 45 chars' do
    expect(build(:course, description: Faker::Lorem.characters(46))).to_not be_valid
  end

  it 'is invalid if status is not numeric' do
    expect(build(:course, status: 'aaa')).to_not be_valid
  end

  it 'is invalid if status is not integer' do
    expect(build(:course, status: 1.5)).to_not be_valid
  end
end
