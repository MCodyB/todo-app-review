class TeamsController < ApplicationController
  def index
    @teams = Team.all
  end

  def show
    @team = Team.find(params[:id])
  end

  def new
    @team = Team.new
  end

  def create
    @team = Team.new(params[:team])
    if @team.save
      # REV: random empty line here
      redirect_to team_url(@team.id)
    else
      render :new
    end
  end

  def edit
    @team = Team.find(params[:id])
  end

  def update
    @team = Team.find(params[:id])
    @team.update_attributes(params[:team])
    params[:user_ids].each do |u_id|
      if TMembership.find_by_user_id(u_id)
        # REV: you don't seem to save this
        # REV: even if you did, wouldn't it change another team membership's team id to this one?
        TMembership.find_by_user_id(u_id).team_id = @team.id
      else
        TMembership.new(:team_id => @team.id, :user_id => u_id)
      end
    end

    redirect_to team_url(@team.id)
  end

end
