# REV: these should have a lower case file name
class Item <ActiveRecord::Base
  attr_accessible :project_id, :title, :description, :completed

  validates :project_id, :title, :presence => true

  belongs_to :project
end
