# Controller for managing messages.
class MessagesController < ApplicationController
  def index
    messages = Message.all
    render json: messages, only: %i[id greeting], status: :ok
  end

  def show
    message = Message.find(params[:id])
    render json: message, only: %i[id greeting], status: :ok
  end
end
