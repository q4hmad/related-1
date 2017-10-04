class User < ActiveRecord::Base
  has_many :communities

  has_many :services, through: :communities
  has_many :groups, through: :communities
  validates(:name, {:presence => true, :length => {:maximum => 35}})
  validates(:email, {:presence => true, :length => {:maximum => 50}})
  validates(:address, {:presence => true, :length => {:maximum => 75}})
  before_save(:name, :first_letter)


 def first_letter
   array = self.brand.split
   array.each do |t|
     t.capitalize!
   end
   self.brand = array.join(' ')
 end


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
