require 'spec_helper'
require 'person'

PERSON_METADATA = {
  maturity_age: 27,
  end_of_ages: 99
}

describe Person, PERSON_METADATA do
  it_behaves_like :getting_mature
end