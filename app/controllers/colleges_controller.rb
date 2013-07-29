class CollegesController < ApplicationController

  def index
    @colleges = College.all
  end

  def show
    @college = College.find_by_id(params[:id])
  end

  def new
    @college = College.new
  end

  def create
    @college = College.new
    @college.name = params[:name]
    @college.address1 = params[:address1]
    @college.address2 = params[:address2]
    @college.city = params[:city]
    @college.state = params[:state]
    @college.zip = params[:zip]
    
    if @college.save
      redirect_to colleges_url
    else
      render 'new'
    end
  end

  def edit
    @college = College.find_by_id(params[:id])
  end

  def update
    @college = College.find_by_id(params[:id])
    @college.name = params[:name]
    @college.address1 = params[:address1]
    @college.address2 = params[:address2]
    @college.city = params[:city]
    @college.state = params[:state]
    @college.zip = params[:zip]
    
    if @college.save
      redirect_to colleges_url
    else
      render 'new'
    end
  end

  def destroy
    @college = College.find_by_id(params[:id])
    @college.destroy
    redirect_to colleges_url
  end
end
