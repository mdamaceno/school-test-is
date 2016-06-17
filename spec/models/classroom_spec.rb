require 'rails_helper'

RSpec.describe Classroom, type: :model do
  it 'has a valid model' do
    expect(build(:classroom)).to be_valid
  end
end
