require_relative '../lib/teacher'

RSpec.describe Teacher do
  describe '#initialize' do
    it 'is initialized with a first name and last name' do
      teacher = Teacher.new('Jane', 'Smith')
      expect(teacher).to be_a(Teacher)
      expect(teacher.first_name).to eq('Jane')
      expect(teacher.last_name).to eq('Smith')
    end
  end

  describe '#teach' do
    it 'returns a random string of knowledge' do
      teacher = Teacher.new('Jane', 'Smith')
      knowledge = teacher.teach
      expect(knowledge).to be_a(String)
      expect(Teacher::KNOWLEDGE).to include(knowledge)
    end
  end
end