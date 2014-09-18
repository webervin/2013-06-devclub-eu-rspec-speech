require 'spec_helper'
require 'person'

describe 'Person' do
  young_age = 26

  # context 'with age 26' do
  context "with age #{young_age}" do
    # subject { Person.new 26 }
    subject { Person.new young_age }

    it 'should be young' do
      assert subject.young?
    end
  end

  non_young_age = 27

  # context "with age 27" do
  context "with age #{non_young_age}" do
    # subject { Person.new 27 }
    subject { Person.new non_young_age }

    it 'should not be young' do
      assert !subject.young?
    end
  end
end