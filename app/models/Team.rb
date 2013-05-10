class Team < ActiveRecord::Base
  attr_accessible :title
  has_many :projects
  has_many :items, :through => :projects
end