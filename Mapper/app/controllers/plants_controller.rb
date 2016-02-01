class PlantsController < ApplicationController
  def index
    if params[:search].present?
      @plants = Plant.near(params[:search], 50, :order => :distance)
    else
      @plants = Plant.all
    end
  end

  def show
    @plant = Plant.find(params[:id])
  end

  def new
    @plant = Plant.new

  end

  def create
    @plant = Plant.new(params[:plant])
    if @plant.save
      redirect_to @plant, :notice => "Successfully created Plant."
    else
      render :action => 'new'
    end
  end

  def destroy
    @plant = Plant.find(params[:id])
    @plant.destroy
    redirect_to plants_url, :notice => "Successfully destroyed plant."
  end
end
