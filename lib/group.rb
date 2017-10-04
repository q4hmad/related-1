class Group < ActiveRecord::Base
  has_many :communities

  has_many :users, through: :communities
  has_many :services, through: :communities

  validates(:interest, {:presence => true, :length => {:maximum => 50}})
  validates(:description, {:presence => true, :length => {:maximum => 150}})
  before_save(:interest, :first_letter)


  def first_letter
   array = self.brand.split
   array.each do |t|
     t.capitalize!
   end
   self.brand = array.join(' ')
  end

end
