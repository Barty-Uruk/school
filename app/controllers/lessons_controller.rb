class LessonsController < ApplicationController
  def show
    @lesson = Lesson.find(params[:id])
    @states = State.find_by lesson: @lesson, user: current_user
    @files = UserDoc.where lesson: @lesson, user: current_user
    @status = Status.find_by lesson: @lesson, user: current_user
  end
end
