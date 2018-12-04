class CoursesController < ApplicationController
  load_and_authorize_resource
  def index
    @courses = Course.all
    @user = current_user
  end
  def show
    @course = Course.find(params[:id])
    @states = State.find_by user: current_user
  end
end
