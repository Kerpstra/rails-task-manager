class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def new
    @task = Task.new
  end

  def show
    @task = Task.find(params[:id])
  end

  def create
    Task.create(task_params)
  end

  private

  def task_params
    params.require(:task).permit(:title, :description)
  end
end
