class ProfileController < ApplicationController
  def index
    @courses = Course.all
    @groups = Group.all
  end
end
