class TasksController < ApplicationController

  def new
    @project = Project.find(params[:project_id])
    @task = @project.tasks.new
  end

  def create
    @project = Project.find(params[:project_id])
    @task = Task.new(tk_params)
    if @task.save
      redirect_to root_path
    else
      puts @task.errors.full_messages
      render 'new'
    end
  end

  def show
    @project = Project.find(params[:project_id])
    @task = Task.find(params[:id])
  end


  private

  def tk_params
    params.require(:task).permit(:title, :aim, :date, :content).merge(project_id: params[:project_id])
  end
end
