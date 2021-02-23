class DiscussionsController < ApplicationController
  before_action :authenticate_user
  
  def new
    @discussion = Discussion.new
    authorize @discussion
  end

  def create
    @discussion = Discussion.new(discussion_params)
    authorize @discussion
    @discussion.user = current_user
    if @discussion.save
      redirect_to discussion_path(@discussion)
    else
      render :new
    end
  end

  private

  def find_discussion
    @discussion = Discussion.find(params[:id])
    authorize @discussion
  end
  def discussion_params
    params.require(:discussion)
          .permit([:employee_id, :hr_id, :topic])
  end
end
