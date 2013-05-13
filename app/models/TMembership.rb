class TMembership < ActiveRecord::Base
  attr_accessor :team_id, :user_id

  belongs_to :user
  belongs_to :team

  # REV: should validate that both ids exist
end
