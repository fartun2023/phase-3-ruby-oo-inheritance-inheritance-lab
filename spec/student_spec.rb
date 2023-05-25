require_relative '../lib/student'

RSpec.describe Student do
  describe '#initialize' do
    it 'is initialized with a first name and last name' do
      student = Student.new('John', 'Doe')
      expect(student).to be_a(Student)
      expect(student.first_name).to eq('John')
      expect(student.last_name).to eq('Doe')
    end
  end

  describe '#learn' do
    it 'takes in a string of knowledge and adds it to the student\'s knowledge array' do
      student = Student.new('John', 'Doe')
      student.learn('Ruby')
      expect(student.knowledge).to eq(['Ruby'])
    end
  end

  describe '#knowledge' do
    it 'returns the student\'s knowledge array' do
      student = Student.new('John', 'Doe')
      student.learn('Ruby')
      student.learn('Python')
      expect(student.knowledge).to eq(['Ruby', 'Python'])
    end
  end
end