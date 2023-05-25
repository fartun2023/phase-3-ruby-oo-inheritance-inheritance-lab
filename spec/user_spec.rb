require_relative '../lib/user'

RSpec.describe User do
  describe '#initialize' do
    it 'is initialized with a first name and last name' do
      user = User.new('John', 'Doe')
      expect(user).to be_a(User)
      expect(user.first_name).to eq('John')
      expect(user.last_name).to eq('Doe')
    end
  end
end