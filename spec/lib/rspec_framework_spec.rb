require 'spec_helper'
require 'rspec_framework'

describe RSpecFramework do
  it { should be_best_framework_ever }
  it { should be_best_syntax_provider }
  its(:presentation) { should be_given_by :ervin }
  its(:presentation) { should be_presented_at :devclub }
end