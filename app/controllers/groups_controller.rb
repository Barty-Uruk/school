class GroupsController < ApplicationController
  def show
    @group = Group.find(params[:id])
  end
  def index
    @groups = Group.all
  end
end
