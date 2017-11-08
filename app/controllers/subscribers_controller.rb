class SubscribersController < ApplicationController
  before_action :set_subscriber, only: %i[show edit update destroy]
  def create
    @subscriber = Subscriber.new(subscriber_params)
    @subscriber.save
    redirect_to subscriber_path
  end

  def index
    @subscribers = Subscriber.all
  end

  def show; end

  def destroy
    @subscriber.destroy
    respond_to do |format|
      format.html { redirect_to subscribers_url, notice: 'Subscriber was successfully deleted.' }
      format.json { head :no_content }
    end
  end
  private

  def set_subscriber
    @subscriber = Subscriber.find(params[:id])
  end
  def subscriber_params
    params.require(:subscriber).permit(:email)
  end
end
