require 'spec_helper'
require 'person'

describe 'Person' do
  subject { Person.new example.metadata[:age] }

  young_age = 26
  # context "with age #{young_age}" do
  context "with age #{young_age}", age: young_age do
    # subject { Person.new young_age }

    it 'should be young' do
      assert subject.young?
    end
  end

  non_young_age = 27
  # context "with age #{non_young_age}" do
  context "with age #{non_young_age}", age: non_young_age do
    # subject { Person.new non_young_age }

    it 'should not be young' do
      assert !subject.young?
    end
  end
end