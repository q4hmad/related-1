require('./app')
require 'spec_helper'

describe(User) do
  it { should have_many(:groups)}
  it { should have_many(:services)}

  describe('#verify')do
    it('verfity address of user to allow them into the app') do
    address = User.new({:address => '767 S Palisade Drive'})
    address.save
    expect(address.verify()).to(eq(false))
    end
  end

end
