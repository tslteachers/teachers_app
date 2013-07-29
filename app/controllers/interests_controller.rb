class InterestsController < ApplicationController

  def index
    @interests = Interest.all
  end

  def show
    @interest = Interest.find_by_id(params[:id])
  end

  def new
    @interest = Interest.new
  end

  def create
    @interest = Interest.new
    @interest.teacher_id = params[:teacher_id]
    @interest.course_id = params[:course_id]
    
    if @interest.save
      redirect_to interests_url
    else
      render 'new'
    end
  end

  def edit
    @interest = Interest.find_by_id(params[:id])
  end

  def update
    @interest = Interest.find_by_id(params[:id])
    @interest.teacher_id = params[:teacher_id]
    @interest.course_id = params[:course_id]
    
    if @interest.save
      redirect_to interests_url
    else
      render 'new'
    end
  end

  def destroy
    @interest = Interest.find_by_id(params[:id])
    @interest.destroy
    redirect_to interests_url
  end
end
