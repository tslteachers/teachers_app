class SubjectsController < ApplicationController

  def index
    @subjects = Subject.all
  end

  def show
    @subject = Subject.find_by_id(params[:id])
  end

  def new
    @subject = Subject.new
  end

  def create
    @subject = Subject.new
    @subject.name = params[:name]
    
    if @subject.save
      redirect_to subjects_url
    else
      render 'new'
    end
  end

  def edit
    @subject = Subject.find_by_id(params[:id])
  end

  def update
    @subject = Subject.find_by_id(params[:id])
    @subject.name = params[:name]
    
    if @subject.save
      redirect_to subjects_url
    else
      render 'new'
    end
  end

  def destroy
    @subject = Subject.find_by_id(params[:id])
    @subject.destroy
    redirect_to subjects_url
  end
end
