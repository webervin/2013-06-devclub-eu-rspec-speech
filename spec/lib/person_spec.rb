require 'spec_helper'
require 'person'

describe 'Person' do
  context 'with age 26' do
    it 'should be young' do
      person = Person.new 26
      assert person.young?
    end
  end

  context 'with age 27' do
    it 'should not be young' do
      person = Person.new 27
      assert !person.young?
    end
  end
end