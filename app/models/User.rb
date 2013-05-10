class User < ActiveRecord::Base
  attr_accessible :name

  has_many :t_memberships
  has_many :teams, :through => :t_memberships
end