require 'spec_helper'
require 'person'

# describe 'Person' do
describe Person do
  # subject { Person.new example.metadata[:age] }
  subject { described_class.new example.metadata[:age] }

  young_age = 26
  context "with age #{young_age}", age: young_age do

    it 'should be young' do
      assert subject.young?
    end
  end

  non_young_age = 27
  context "with age #{non_young_age}", age: non_young_age do

    it 'should not be young' do
      assert !subject.young?
    end
  end
end