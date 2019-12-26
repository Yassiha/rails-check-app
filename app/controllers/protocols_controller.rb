class ProtocolsController < ApplicationController
  def index
    @protocols = Protocol.all
  end

  def show
    @protocol = Protocol.find(params[:area_id])
    @feedbacks = []
    feedbacks = Feedback.all
    feedbacks.each do |feedback|
      @feedbacks << feedback if feedback.protocol == @protocol
    end
  end

  def new
    @protocol = Protocol.new
    @proto = Area.find(params[:area_id])
  end

  def edit
    @protocol = Protocol.find(params[:area_id])
  end

  def create
    @protocol = Protocol.new(protocol_params)
    @protocol.area = Area.find(params[:area_id])
    @protocol.save

    redirect_to area_path(@protocol.area)
  end

  def update
    @protocol = Protocol.find(params[:area_id])
    @protocol.update(protocol_params)

    redirect_to area_protocol_path(@protocol)
  end

  def destroy
    @protocol = Protocol.find(params[:area_id])
    @protocol.destroy

    redirect_to area_path(@protocol.area)
  end

  private

  def protocol_params
    params.require(:protocol).permit(:title, :content, :area_id)
  end
end
