class User < ActiveRecord::Base
  has_many :communities

  has_many :services, through: :communities
  has_many :groups, through: :communities

  validates(:name, {:length => {:maximum => 35}})
  validates(:email, {:length => {:maximum => 50}})
  
  # validates(:address, {:verify => true})
  #
  # def verify
  #   address_input = self.address
  #   address = '1000 Vista Avenue'
  #   if address == address_input
  #     return true
  #   else false
  #   end
  # end

end
