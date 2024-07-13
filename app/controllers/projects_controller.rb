class ProjectsController < ApplicationController
  before_action :authenticate_user!

  def index
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(pj_params.except(:user_ids))

    if @project.save
      user_ids = pj_params[:user_ids]
        user_ids.each do |user_id|
          ProjectUser.create(project_id: @project.id, user_id: user_id)
        end
      redirect_to root_path
    else
      puts @project.errors.full_messages
      render :new
    end
  end

  def show
    @project = Project.find(params[:id])
  end



private

  def pj_params
    params.require(:project).permit(:title, :goal, :date, user_ids: [])
  end

end