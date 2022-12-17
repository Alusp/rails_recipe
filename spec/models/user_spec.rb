require 'rails_helper'

RSpec.describe User, type: :model do
  subject do
    User.new(name: 'alusine', email: 'alujallo@example.com', password: '123456')
  end
  before { subject.save }

   

  it 'should valid the name' do
    subject.name = 'alusine'
    expect(subject).to be_valid
  end
end