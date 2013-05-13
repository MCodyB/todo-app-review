class ItemsController < ApplicationController
  def index
    @items = Project.find(params[:project_id]).items
  end

  def show
    @item = Item.find(params[:id])
  end

  def new
    @item = Item.new(:project_id => params[:project_id])
  end

  def create
    @item = Item.new(params[:item])
    if @item.save
      redirect_to project_url(@item.project_id)
    else
      render :new
    end
  end

  def edit
    @item = Item.find(params[:id])
  end

  def update
    @item = Item.find(params[:id])
    # REV: should check if the updated attributes are valid and fill out the form again with errors if not
    @item.update_attributes(params[:item])

    redirect_to project_url(@item.project_id)
  end

end
