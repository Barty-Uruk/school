class LessonsController < ApplicationController
  def show
    @lesson = Lesson.find(params[:id])
    @states = State.find_by lesson: @lesson, user: current_user
  end
end
