class MessagesController < ApplicationController
  def index
    messages = Message.all
    render json: messages, only: [:id, :greeting], status: :ok
  end
  
  def show
    message = Message.find(params[:id])
    render json: message, only: [:id, :greeting], status: :ok
  end
end