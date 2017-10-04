require('./app')
require("spec_helper")


describe(Community) do
  it { should belong_to(:user)}
  it { should belong_to(:group)}
  it { should belong_to(:service)}
end
