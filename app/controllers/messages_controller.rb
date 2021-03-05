class MessagesController < ApplicationController
  before_action :authenticate_user!

  def create
    @discussion = Discussion.find(params[:discussion_id])
    @message = Message.new(message_params)
    authorize @message
    @message.user = current_user
    @message.discussion = @discussion
    if @message.save
      @notification = Notification.create(
        sender: current_user,
        user: User.find(@message.discussion.hr_id),
        content: "Vous avez un nouveau message de la part de #{current_user.full_name}: '#{@message.content}'",
        category: "Nouveau message"
      )
      @notification.save
      NotificationChannel.broadcast_to(
        @notification.user,
        render_to_string(partial: "shared/notification", locals: { notification: @notification, notif_index: false })
      )
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
