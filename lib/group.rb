class Group < ActiveRecord::Base
  has_many :communities

  has_many :users, through: :communities
  has_many :services, through: :communities

end
