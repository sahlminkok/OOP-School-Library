require_relative '../student'
require 'rspec'

RSpec.describe Student do
  describe '#initialize method' do
    it 'Creates a new student with provided attr' do
      student = Student.new(name: 'Abel', age: 16)
      expect(student.name).to eq('Abel')
      expect(student.age).to eq(16)
      expect(student.instance_variable_get(:@parent_permission)).to eq(true)
    end
  end

  describe '#new_from_hash method' do
    it 'creates a new student from Hash' do
      hash = {name: 'Bob', age: 12, parent_permission: true }
      student = Student.new_from_hash(hash)
      expect(student.name).to eq('Bob')
      expect(student.age).to eq(12)
      expect(student.instance_variable_get(:@parent_permission)).to eq(true)
    end
  end
end
