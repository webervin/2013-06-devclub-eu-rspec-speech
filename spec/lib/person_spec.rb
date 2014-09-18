require 'spec_helper'
require 'person'

describe 'Person' do
  context 'with age 26' do
    # let(:person) { Person.new 26 }
    subject { Person.new 26 }

    it 'should be young' do
      # assert person.young?
      assert subject.young?
    end
  end

  context 'with age 27' do
    # let(:person) { Person.new 27 }
    subject { Person.new 27 }

    it 'should not be young' do
      # assert !person.young?
      assert !subject.young?
    end
  end
end