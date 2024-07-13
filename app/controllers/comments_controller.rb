class CommentsController < ApplicationController
  def new
    @project = Project.find(params[:project_id])
    @comment = Comment.new
  end

  def create
    @project = Project.find(params[:project_id])
    @task = Task.find(params[:task_id])
    @comment = @task.comments.new(com_params)
    if @comment.save
      redirect_to project_task_path(@project, @task)
    else
      puts @comment.errors.full_messages
      render 'new'
    end
  end

  private

  def com_params
    params.require(:comment).permit(:comment).merge(user_id: current_user.id)
  end
end
