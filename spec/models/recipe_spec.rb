require 'rails_helper'

RSpec.describe Recipe, type: :model do
  subject do
    @user = User.create(name: 'Alusine', email: 'alujallo@mail.com', password: '1234567')
    Recipe.create(name: 'Recipe', description: 'This is desc', public: true, preparation_time: '1 hours', cooking_time: '1 days', user: @user)
  end

  before(:each) { subject.save }

  it 'should have description "This is desc"' do
    expect(subject.description).to eql('This is desc')
  end

  it 'should have public of true' do
    expect(subject.public).to eql(true)
  end
end
