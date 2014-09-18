require 'spec_helper'
require 'person'

describe Person do
  subject { described_class.new example.metadata[:age] }

  maturity_age = 27
  (0...maturity_age).each do |age|
    context "with age #{age}", age: age do

      it 'should be young' do
        assert subject.young?
      end
    end
  end

  (maturity_age..99).each do |age|
    context "with age #{age}", age: age do

      it 'should not be young' do
        assert !subject.young?
      end
    end
  end
end