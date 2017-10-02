class Service < ActiveRecord::Base
  has_many :communities

  has_many :users, through: :communities
  has_many :groups, through: :communities
end
