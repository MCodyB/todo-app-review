class ProjectsController < ApplicationController
  def index
    @projects = Project.all
  end

  def show
    @project = Project.find(params[:id])
  end

  def new
    @project = Project.new(:project_id => params[:project_id])
  end

  def create
    @project = Project.new(params[:project])
    if @project.save
      redirect_to project_url(@project.id)
    else
      render :new
    end
  end

  def edit
    @project = Project.find(params[:id])
  end

  def update
    @project = Project.find(params[:id])
    @project.update_attributes(params[:project])

    redirect_to project_url(@project.id)
  end

end