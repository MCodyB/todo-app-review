class Item <ActiveRecord::Base
  attr_accessible :project_id, :title, :description

  belongs_to :project
end