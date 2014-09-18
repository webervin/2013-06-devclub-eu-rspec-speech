require 'spec_helper'
require 'person'

describe 'Person' do
  it 'with age 26 should be young' do
    person = Person.new 26
    assert person.young?
  end

  it 'with age 27 should not be young' do
    person = Person.new 27
    assert !person.young?
  end
end