class TasksController < ApplicationController
  before_action :set_task, only: %i[edit update show destroy move_to_column move_up move_down move_column_and_position]
  before_action :new_task, only: %i[new small_new]
  before_action :new_task_with_params, only: %i[create create_small]

  def index
    @tasks = Task.all.order(:status, :position)
  end

  def create
    respond_to do |format|
      if @task.save
        @task_counter = Task.where(status: @task.status).length
        format.html { redirect_to tasks_path }
        format.turbo_stream {}
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  def create_small
    respond_to do |format|
      if @task.save
        @task_counter = Task.where(status: @task.status).length
        format.html { redirect_to tasks_path }
        format.turbo_stream {}
      else
        format.html { render :small_new, status: :unprocessable_entity }
        format.turbo_stream { render :small_new, status: :unprocessable_entity }
      end
    end
  end

  def show
  end

  def edit
  end

  def new
  end

  def small_new
    @task.status = params[:status]
  end

  def move_to_column
    respond_to do |format|
      @old_status = @task.status
      if @task.update(status: params[:status])
        @new_list_counter = Task.where(status: @task.status).length
        @old_list_counter = Task.where(status: @old_status).length
        format.html { redirect_to tasks_path }
        format.turbo_stream {}
      end
    end
  end

  def move_up
    @task.move_higher
    respond_to do |format|
      format.html { redirect_to tasks_path }
    end
  end

  def move_down
    @task.move_lower
    respond_to do |format|
      format.html { redirect_to tasks_path }
    end
  end

  def move_column_and_position
    puts "old position #{@task.position}"
    return unless @task.update(status: params[:status])

    @task.insert_at(params[:position].to_i)
    puts "new position #{@task.position}"
    head :no_content
  end

  def update
    respond_to do |format|
      if @task.update(task_params)
        format.html { redirect_to task_url, notice: 'Task was successfully updated.' }
      else
        format.html { render :edit, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @task.destroy!
    respond_to do |format|
      format.html { redirect_to tasks_path, notice: 'Task was successfully destroyed.' }
    end
  end

  private

  def task_params
    params.require(:task).permit(:status, :title, :description, :due_date)
  end

  def set_task
    @task = Task.find(params[:id])
  end

  def new_task
    @task = Task.new
  end

  def new_task_with_params
    @task = Task.new(task_params)
  end
end
