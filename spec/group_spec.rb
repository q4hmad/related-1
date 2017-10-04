require('./app')
require("spec_helper")


describe(Group) do
  it { should have_many(:communities)}
  it { should have_many(:users)}
end
