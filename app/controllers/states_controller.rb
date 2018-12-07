class StatesController < ApplicationController
  def create
    @lesson = Lesson.find(state_params[:lesson_id])
    @lessonAll = Lesson.where course: @lesson.course
    @user = User.find(state_params[:user_id])
    @state = State.find_by lesson: @lesson, user: @user
    @status = Status.find_by lesson: @lesson, user: @user
    @status.status = 1
    @status.save
    @alert = Alert.new
    @alert.description = "Вам была выставлена оценка #{params[:state_id]} за урок #{@lesson.title}"
    @alert.user = @user
    @alert.save
    @oldExp = 0
    if @state.nil?

    if @user.experience.nil?
      @user.experience = @lesson.experience
    else
      @oldExp = @user.experience
      @user.experience = @user.experience + @lesson.experience
    end
    end
    @lessonAll.each do |less|
      if (@oldExp < less.required_experience && @user.experience >= less.required_experience)
        @alert = Alert.new
        @alert.description = "Вам стал доступен урок #{less.title}"
        @alert.user = @user
        @alert.save
      end
    end


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
    if @user.rating.nil?
      @user.rating = params[:state_id]
    else
      @user.rating = 0
      @user.states.each do |state|
          @user.rating += state.value
      end
    end
    @user.save
     redirect_to profile_index_path
  end
  private
  def state_params
    params.require(:state).permit(:state_id, :lesson_id, :user_id)
  end
end
