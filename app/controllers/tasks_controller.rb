class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(params_tasks)
    @task.save
    redirect_to tasks_path
  end

  private

  def params_tasks
    params.require(:task).permit(:title, :details)
  end
end
