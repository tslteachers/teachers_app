class TeachersController < ApplicationController

  def index
    @teachers = Teacher.all
  end

  def show
    @teacher = Teacher.find_by_id(params[:id])
  end

  def new
    @teacher = Teacher.new
  end

  def create
    @teacher = Teacher.new
    @teacher.first_name = params[:first_name]
    @teacher.last_name = params[:last_name]
    @teacher.bio = params[:bio]
    @teacher.highest_degree = params[:highest_degree]
    @teacher.availability = params[:availability]
    @teacher.email = params[:email]
    @teacher.phone = params[:phone]
    
    if @teacher.save
      redirect_to teachers_url
    else
      render 'new'
    end
  end

  def edit
    @teacher = Teacher.find_by_id(params[:id])
  end

  def update
    @teacher = Teacher.find_by_id(params[:id])
    @teacher.first_name = params[:first_name]
    @teacher.last_name = params[:last_name]
    @teacher.bio = params[:bio]
    @teacher.highest_degree = params[:highest_degree]
    @teacher.availability = params[:availability]
    @teacher.email = params[:email]
    @teacher.phone = params[:phone]
    
    if @teacher.save
      redirect_to teachers_url
    else
      render 'new'
    end
  end

  def destroy
    @teacher = Teacher.find_by_id(params[:id])
    @teacher.destroy
    redirect_to teachers_url
  end
end
