require("spec_helper")


describe(Service) do
  it { should have_many(:communities)}
  it { should have_many(:users)}
end
