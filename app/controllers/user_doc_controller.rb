class UserDocController < ApplicationController
  def index

  end
  def create
    @doc = UserDoc.new(doc_params)
    @doc.user = current_user
    @lesson = Lesson.find(doc_params[:lesson_id])
    @doc.lesson = @lesson
    @doc.save
    redirect_to @lesson
  end
  private
  def doc_params
    params.require(:doc).permit(:file, :lesson_id)
  end
end
