class StatesController < ApplicationController
  def create
    @lesson = Lesson.find(state_params[:lesson_id])
    @user = User.find(state_params[:user_id])
    @state = State.find_by lesson: @lesson, user: @user
    @status = Status.find_by lesson: @lesson, user: @user
    @status.status = 1
    @status.save
    if (@state.nil?)
      @statenew = State.new
      @statenew.lesson = @lesson
      @statenew.user = @user
      @statenew.value = params[:state_id]
      @statenew.save
    else
      @state.lesson = @lesson
      @state.user = @user
      @state.value = params[:state_id]
      @state.save
    end
     redirect_to profile_index_path
  end
  private
  def state_params
    params.require(:state).permit(:state_id, :lesson_id, :user_id)
  end
end
