class ConcentrationsController < ApplicationController

  def index
    @concentrations = Concentration.all
  end

  def show
    @concentration = Concentration.find_by_id(params[:id])
  end

  def new
    @concentration = Concentration.new
  end

  def create
    @concentration = Concentration.new
    @concentration.teacher_id = params[:teacher_id]
    @concentration.subject_id = params[:subject_id]
    
    if @concentration.save
      redirect_to concentrations_url
    else
      render 'new'
    end
  end

  def edit
    @concentration = Concentration.find_by_id(params[:id])
  end

  def update
    @concentration = Concentration.find_by_id(params[:id])
    @concentration.teacher_id = params[:teacher_id]
    @concentration.subject_id = params[:subject_id]
    
    if @concentration.save
      redirect_to concentrations_url
    else
      render 'new'
    end
  end

  def destroy
    @concentration = Concentration.find_by_id(params[:id])
    @concentration.destroy
    redirect_to concentrations_url
  end
end
