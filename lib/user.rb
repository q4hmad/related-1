class User < ActiveRecord::Base
  has_many :communities

  has_many :services, through: :communities
  has_many :groups, through: :communities

  validates(:name, {:length => {:maximum => 35}})
  validates(:email, {:length => {:maximum => 50}})
  before_save(:name, :first_letter)

  def first_letter
   array = self.interest.split
   array.each do |t|
     t.capitalize!
   end
   self.interest = array.join(' ')
  end

end
