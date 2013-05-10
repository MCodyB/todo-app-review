class Project < ActiveRecord::Base
  attr_accessible :title, :description, :team_id

  validates :title, :presence => true

  has_many :items
  belongs_to :team
end