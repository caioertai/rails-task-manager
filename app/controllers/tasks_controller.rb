class TasksController < ApplicationController
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
    @task = Task.find(params[:id])
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    @task.update(task_params)
    redirect_to root_path
  end

  def toggle
    @task = Task.find(params[:id])
    new_value = !@task.completed
    @task.update_attribute(:completed, new_value)
    redirect_to root_path
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to root_path
  end

  private

  def task_params
    params.require(:task).permit(:name, :details)
  end
end
