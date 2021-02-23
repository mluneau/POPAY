class MessagesController < ApplicationController
  before_action :authenticate_user

  def create
    @message = Message.new(message_params)
    authorize @message
    @message.user = current_user
    if @message.save
      redirect_to message_path(@message)
    else
      render :new
    end
  end

  private

  def message_params
    params.require(:message)
          .permit([:content, :discussion_id, :user_id])
  end

end
