class DiscussionsController < ApplicationController
  before_action :find_discussion, only: [:show]

  def index
    @discussions = policy_scope(Discussion)
  end

  def show
  end

  def new
    @discussion = Discussion.new
    authorize @discussion
  end

  def create
    @discussion = Discussion.new(discussion_params)
    @discussion.employee = current_user
    authorize @discussion
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
          .permit(:topic, :hr_id)
  end
end
