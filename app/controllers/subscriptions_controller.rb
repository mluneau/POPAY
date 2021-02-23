class SubscriptionsController < ApplicationController
  def new
    @subscription = Subscription.new
  end

  def create
    @subscription = Subscription.new(subscription_params)
    if @subscription.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def subscription_params
    params.permit(:subscription).require(:monthly_price, :name)
  end
end
