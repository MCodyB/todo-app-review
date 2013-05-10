class Team < ActiveRecord::Base

  has_many :projects
  has_many :items, :through => :projects
end