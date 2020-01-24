class TasksController < ApplicationController
  def new
    @task = Task.new
    @proto = Protocol.find(params[:area_id])
    @area = @proto.area
  end

  def show
    @task = Task.find(params[:area_id])
    @date_color =
      if @task.status == "100%"
              'green'
      elsif Date.today >= @task.start && Date.today < @task.end
        'green'
      elsif Date.today >= @task.start && Date.today == @task.end
        'orange'
      elsif Date.today >= @task.start && Date.today > @task.end
        'red'
      else
        'gray'
      end
  end

  def edit
    @task = Task.find(params[:area_id])
  end

  def create
    @task = Task.new(task_params)
    @task.protocol = Protocol.find(params[:area_id])
    if @task.title == ''
      redirect_to new_area_protocol_task_path(@task.protocol, @task.protocol.area)
    else
      @task.save
      redirect_to area_protocol_path(@task.protocol, @task)
    end
  end

  def update
    @task = Task.find(params[:area_id])
    @task.update(task_params)
    @task.checkbox = true if @task.status == '100%'
    @task.status = '100%' if @task.checkbox == true

    @task.save
    redirect_to area_protocol_task_path(@task, @task.protocol)
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
                                 :checkbox,
                                 :start,
                                 :end,
                                 :budget,
                                 :priority,
                                 :status,
                                 :member)
  end
end
