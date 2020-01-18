class TasksController < ApplicationController
  def new
    @task = Task.new
    @proto = Protocol.find(params[:area_id])
    @area = @proto.area
  end

  def show
    @task = Task.find(params[:area_id])
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
    if @task.checkbox
      redirect_to area_protocol_path(@task.protocol, @task)
    else
      redirect_to area_protocol_task_path(@task, @task.protocol)
    end
  end

  def destroy
    @task = Task.find(params[:area_id])
    protocol = @task.protocol
    @task.destroy

    redirect_to area_protocol_path(protocol)
  end

  private

  def task_params
    params.require(:task).permit(:content,
                                 :title,
                                 :type,
                                 :protocol,
                                 :area,
                                 :checkbox)
  end
end
