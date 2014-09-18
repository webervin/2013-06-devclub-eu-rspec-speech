require 'spec_helper'
require 'highlander'

HIGHLANDER_METADATA = {
  maturity_age: 270,
  end_of_ages: 999
}

describe Highlander, HIGHLANDER_METADATA do
  it_behaves_like :getting_mature
end