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

  def edit
    @task = Task.find(params[:protocol_id])
  end

  def create
    @task = Task.new(task_params)
    @task.protocol = Protocol.find(params[:protocol_id])
    @task.save
    redirect_to protocol_path(@task.protocol)
  end

  def update
    @task = Task.find(params[:protocol_id])
    @task.update(task_params)

    redirect_to protocol_path(@task.protocol)
  end

  def destroy
    @task = Task.find(params[:protocol_id])
    prot = @task.protocol
    @task.destroy

    redirect_to protocol_path(prot)
  end

  private

  def task_params
    params.require(:task).permit(:content, :check, :protocol)
  end
end
