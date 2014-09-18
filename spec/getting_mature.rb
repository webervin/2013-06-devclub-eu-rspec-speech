require 'spec_helper'
# require 'person'

shared_examples_for :getting_mature do
  subject { described_class.new example.metadata[:age] }

  maturity_age = self.metadata[:maturity_age]
  (0...maturity_age).each do |age|
    context "with age #{age}", age: age do

      it 'should be young' do
        assert subject.young?
      end
    end
  end

  end_of_ages = self.metadata[:end_of_ages]
  (maturity_age..end_of_ages).each do |age|
    context "with age #{age}", age: age do
      it 'should not be young' do
        assert !subject.young?
      end
    end
  end
end