class ProfileController < ApplicationController
  def index
    @courses = Course.all
  end
end
