class TasksController < ApplicationController
  before_action :find_task_id, only: [:show, :edit, :update, :toggle, :destroy]

  def new
    @task = Task.new
  end

  def create
    Task.create(task_params)
    redirect_to root_path
  end

  def index
    @task = Task.new
    @tasks = Task.all
  end

  def show
  end

  def edit
  end

  def update
    @task.update(task_params)
    redirect_to root_path
  end

  def toggle
    new_value = !@task.completed
    @task.update_attribute(:completed, new_value)
    redirect_to root_path
  end

  def destroy
    @task.destroy
    redirect_to root_path
  end

  private

  def task_params
    params.require(:task).permit(:name, :details)
  end

  def find_task_id
    @task = Task.find(params[:id])
  end
end
