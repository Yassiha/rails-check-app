class ProtocolsController < ApplicationController
  def index
    @protocols = Protocol.all
  end

  def show
    @protocol = Protocol.find(params[:id])
  end

  def new
    @protocol = Protocol.new
  end

  def edit
    @protocol = Protocol.find(params[:id])
  end

  def create
    @protocol = Protocol.new(protocol_params)
    @protocol.save

    redirect_to protocols_path
  end

  def update
    @protocol = Protocol.find(params[:id])
    @protocol.update(protocol_params)

    redirect_to protocol_path(@protocol)
  end

  def destroy
    @protocol = Protocol.find(params[:id])
    @protocol.destroy

    redirect_to protocols_path
  end

  private

  def protocol_params
    params.require(:protocol).permit(:title, :content)
  end
end
