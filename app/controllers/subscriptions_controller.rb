class SubscriptionsController < ApplicationController
  
  def new
    @subscription = Subscription.new
    authorize @subscription
  end

  def create
    @subscription = Subscription.new(subscription_params)
    authorize @subscription
    if @subscription.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def subscription_params
    params.require(:subscription).permit([:monthly_price, :name])
  end
end
