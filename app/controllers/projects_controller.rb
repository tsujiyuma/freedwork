class ProjectsController < ApplicationController
  before_action :authenticate_user!


  def index
  end

  def new
    @project = Project.new
  end

  def create
  end



private

  def pj_params
    params.require(:project).permit(:title, :goal, :date, user_ids:[])
  end

end