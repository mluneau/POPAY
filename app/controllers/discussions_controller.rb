class DiscussionsController < ApplicationController
  before_action :authenticate_user!
  before_action :find_discussion, only: [:show]

  def index
    @discussions = Discussion.all
  end

  def show
  end

  def new
    @discussion = Discussion.new
    authorize @discussion
  end

  def create
    @discussion = Discussion.new(discussion_params)
    authorize @discussion
    @discussion.user = current_user
    if @discussion.save
      flash.notice = "Discussion created !"
      redirect_to root_path
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
          .permit([:topic])
  end
end
