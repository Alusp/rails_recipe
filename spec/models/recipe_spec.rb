require 'rails_helper'

RSpec.describe Recipe, type: :model do
  subject do
    @user = User.create!(name: 'Tom',  email: "email@hmail.com", password: "password")
    Recipe.create!(name: 'recipe 1', preparation_time: '5 hours', cooking_time: '20 min', description: 'ddajdhasjdhdjdhsadhadhjkahdkahd', user_id: @user.id)
  end

  it 'should be invalid without name' do
    subject.name = 'recipe 1'
    expect(subject).to be_valid
  end
end