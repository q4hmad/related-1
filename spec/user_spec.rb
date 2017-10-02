require 'spec_helper'

describe(User) do
  it { should have_many(:communities)}
  it { should have_many(:groups)}
  it { should have_many(:services)}

end
