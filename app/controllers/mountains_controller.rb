class MountainsController < ApplicationController
  before_action :set_mountain, only: [:update, :edit, :show]

  def index
    @mountains= Mountain.all
  end

  def new
    @mountain= Mountain.new
  end

  def create
    @mountain= Mountain.new(mountain_params)
    if @mountain.save
      flash[:notice] = "Mountain Successfully Added"
      redirect_to mountain_path(@mountain)
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @mountain.update(mountain_params)
      flash[:notice]= "Mountain Successfully Updated"
      redirect_to mountain_path(@mountain)
    else
      render :edit
    end
  end

  def destroy
    mountain= Mountain.find(params[:id])
    if mountain.destroy
      flash[:notice] = "Mountain deleted"
      redirect_to mountains_path
    end
  end

  private

  def set_mountain
    @mountain= Mountain.find(params[:id])
  end

  def mountain_params
    params.require(:mountain).permit(:name, :elevation, :climbed)
  end

end
