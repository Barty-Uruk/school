class ProfileController < ApplicationController
  def index
    @courses = Course.all
    @groups = Group.all
    @alerts = Alert.where user: current_user
  end
end
