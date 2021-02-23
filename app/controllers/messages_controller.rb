class MessagesController < ApplicationController
  before_action :find_discussion, only:[:create]
  before_action :authenticate_user

  def index
    @messages = @message.all
  end

  def create
    @message = Message.new(message_params)
    @message.discussion = @discussion
    @message.user = current_user
    if @message.save
      redirect_to discussion_path(@discussion, anchor: "message-#{@message.id}")
    else
      render "discussions/show"
    end
  end



  private

  def find_discussion
    @discussion = Discussion.find(params[:discussion_id])
  end
  
  def message_params
    params.require(:message)
          .permit([:content])
  end

end
