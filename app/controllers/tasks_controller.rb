class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:area_id])
  end

  def new
    @task = Task.new
  end

  def edit
    @task = Task.find(params[:area_id])
  end

  def create
    @task = Task.new(task_params)
    @task.protocol = Protocol.find(params[:area_id])
    @task.save
    redirect_to area_protocol_path(@task.protocol, @task)
  end

  def update
    @task = Task.find(params[:area_id])
    @task.update(task_params)

    redirect_to area_protocol_path(@task.protocol)
  end

  def destroy
    @task = Task.find(params[:area_id])
    prot = @task.protocol
    @task.destroy

    redirect_to area_protocol_path(prot)
  end

  private

  def task_params
    params.require(:task).permit(:content, :check, :protocol, :area)
  end
end
