class SubscribersController < ApplicationController
  def create
    @subscriber = Subscriber.new(subscriber_params)
    @subscriber.save
    redirect_to "http://www.rubyonrails.org"
  end

  private
  def subscriber_params
    params.require(:subscriber).permit(:email)
  end
end
