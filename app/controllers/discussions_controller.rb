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
    authorize @discussion
    @discussion.employee_id = current_user.id
    if @discussion.save
      redirect_to discussion_path
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
