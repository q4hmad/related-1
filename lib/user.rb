class User < ActiveRecord::Base
  has_many :communities

  has_many :services, through: :communities
  has_many :groups, through: :communities
end
