require 'spec_helper'

describe User do
  it { should_not allow_value("blah").for(:email) }
  it { should allow_value("a@b.com").for(:email) }
  it { should_not allow_mass_assignment_of(:password) }
end
