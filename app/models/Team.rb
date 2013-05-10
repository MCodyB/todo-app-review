class Team < ActiveRecord::Base
  attr_accessible :title
  has_many :projects
  has_many :items, :through => :projects
  has_many :t_memberships
  has_many :users, :through => :t_memberships
end