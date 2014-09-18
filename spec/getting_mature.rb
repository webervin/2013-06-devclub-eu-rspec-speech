require 'spec_helper'
# require 'person'

shared_examples_for :getting_mature do
  subject { described_class.new example.metadata[:age] }

  (0...self.metadata[:maturity_age]).each do |age|
    context "with age #{age}", age: age do

      it 'should be young' do
        # (subject.young?).should be_true
        subject.should be_young
      end
    end
  end

  (self.metadata[:maturity_age]..self.metadata[:end_of_ages]).each do |age|
    context "with age #{age}", age: age do
      it 'should not be young' do
        # (subject.young?).should_not be_true
        subject.should_not be_young
      end
    end
  end
end