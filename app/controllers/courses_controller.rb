class CoursesController < ApplicationController

  def index
    @courses = Course.all
  end

  def show
    @course = Course.find_by_id(params[:id])
  end

  def new
    @course = Course.new
  end

  def create
    @course = Course.new
    @course.subject_id = params[:subject_id]
    @course.location = params[:location]
    @course.time = params[:time]
    @course.compensation = params[:compensation]
    @course.qualifications = params[:qualifications]
    @course.college_id = params[:college_id]
    @course.description = params[:description]
    
    if @course.save
      redirect_to courses_url
    else
      render 'new'
    end
  end

  def edit
    @course = Course.find_by_id(params[:id])
  end

  def update
    @course = Course.find_by_id(params[:id])
    @course.subject_id = params[:subject_id]
    @course.location = params[:location]
    @course.time = params[:time]
    @course.compensation = params[:compensation]
    @course.qualifications = params[:qualifications]
    @course.college_id = params[:college_id]
    @course.description = params[:description]
    
    if @course.save
      redirect_to courses_url
    else
      render 'new'
    end
  end

  def destroy
    @course = Course.find_by_id(params[:id])
    @course.destroy
    redirect_to courses_url
  end
end
