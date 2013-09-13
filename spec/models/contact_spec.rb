require 'spec_helper'

describe Contact do
  mike=FactoryGirl.create(:contact)

  it { should have_valid(:email).when(mike.email)}
  it { should have_valid(:subject).when(mike.subject)}
  it { should have_valid(:description).when(mike.description)}
  it { should have_valid(:first_name).when(mike.first_name)}
  it { should have_valid(:last_name).when(mike.last_name)}

end
