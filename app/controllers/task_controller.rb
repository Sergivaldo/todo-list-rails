class TaskController < ApplicationController
  def index
    @tasks = Task.all
  end

  def create
    @task = Task.new(task_params)

    if @task.save
      redirect_to task_index_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @task = Task.find(params[:id])
  end

  def new
    @task = Task.new
    @task.status = params[:status]
  end

  private

  def task_params
    params.require(:task).permit(:status, :title)
  end
end
