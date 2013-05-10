class TMembership < ActiveRecord::Base
  attr_accessor :team_id, :user_id

  belongs_to :user
  belongs_to :team
end