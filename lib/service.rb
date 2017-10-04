class Service < ActiveRecord::Base
  has_many :communities

  has_many :users, through: :communities
  has_many :groups, through: :communities

  validates(:location, {:presence => true, :length => {:maximum => 50}})
  validates(:detail, {:presence => true, :length => {:maximum => 150}})

end
