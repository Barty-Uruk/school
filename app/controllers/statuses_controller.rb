class StatusesController < ApplicationController
  def create
    @lesson = Lesson.find(status_params[:lesson])
    @status = Status.find_by lesson: @lesson, user: current_user
    if (@status.nil?)
      @statusnew = Status.new
      @statusnew.lesson = @lesson
      @statusnew.user = current_user
      @statusnew.status = 2
      @statusnew.save
    elsif (@status.status == 2)
      @status.status = 1
      @status.save
    elsif  (@status.status = 1)
      @status.status = 2
      @status.save
    end
    redirect_to @lesson
  end
  def update
    @status = Status.find(params[:id])
    @status.status = 1
    @status.save
    redirect_to profile_index_path
  end
  private
  def status_params
    params.require(:status).permit(:lesson)
  end
end
