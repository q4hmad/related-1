require('./app')
require("spec_helper")


describe(Service) do
  it { should have_many(:users)}
  it { should have_many(:groups)}
end
