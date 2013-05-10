class Project < ActiveRecord::Base
  attr_accessible :title, :description

  validates :title, :presence => true

  has_many :items
end