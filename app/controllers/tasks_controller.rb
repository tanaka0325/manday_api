class TasksController < ApplicationController
  # before_action :authenticate_user
  before_action :set_task, only: [:show, :update, :destroy]

  def index
    @tasks = Task.all
    render json: @tasks
  end

  def show
    render json: @task
  end

  def date
    @tasks = Task.where('date' => params[:date])
    render json: @tasks
  end

  def create
    @task = Task.new(task_params)

    if @task.save
      render json: @task, status: :created, location: @task
    else
      render json: @task.errors, status: :unprocessable_entity
    end
  end

  def update
    if @task.update(task_params)
      render json: @task
    else
      render json: @task.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @task.destroy
    render json: {}
  end

  private

    def set_task
      @task = Task.find(params[:id])
    end

    def task_params
      params.require(:task).permit(:user_id, :date, :status, :body, :priority)
    end

end
