class Team < ActiveRecord::Base
  attr_accessible :title
  has_many :projects
  has_many :items, :through => :projects
  has_and_belongs_to_many :users
end