class TasksController < ApplicationController
  before_action :set_task, except: [:index, :new]

  def index
    @tasks = Task.all
  end

  def new
    @task = Task.new
  end

  def show
  end

  def create
    task.save
    redirect_to task_path(task)
  end

  def edit
  end

  def update
    @task.update(task_params)

    redirect_to task_path(@task)
  end

  def delete
    @task.destroy

    redirect_to tasks_path
  end

  private

  def set_task
    @task = Task.find(params[:id])
  end

  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end
end
