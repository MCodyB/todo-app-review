class Project < ActiveRecord::Base
  attr_accessible :title, :description, :team_id

  validates :title, :presence => true

  # REV: you need to put a dependent: destroy on the has_many so the items aren't orphaned when a project is deleted
  has_many :items
  belongs_to :team
end
