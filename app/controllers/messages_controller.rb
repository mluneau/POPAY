class MessagesController < ApplicationController
  before_action :authenticate_user!

  def create
    @discussion = Discussion.find(params[:discussion_id])    
    @message = Message.new(message_params)
    authorize @message
    @message.user = current_user
    @message.discussion = @discussion
    if @message.save
      redirect_to discussion_path(@discussion, anchor: "messages")
    else
      render :new
    end
  end

  private

  def message_params
    params.require(:message)
          .permit([:content])
  end

end
