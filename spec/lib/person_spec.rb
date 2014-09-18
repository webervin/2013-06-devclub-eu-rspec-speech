require 'spec_helper'
require 'person'

describe 'Person' do
  context 'with age 26' do
    # before { @person = Person.new 26 }
    let(:person) { Person.new 26 }

    it 'should be young' do
      # assert @person.young?
      assert person.young?
    end
  end

  context 'with age 27' do
    # before { @person = Person.new 27 }
    let(:person) { Person.new 27 }

    it 'should not be young' do
      # assert !@person.young?
      assert !person.young?
    end
  end
end