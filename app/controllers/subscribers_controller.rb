class SubscribersController < ApplicationController
include SessionsHelper

  def new
    @subscriber=Subscriber.new
  end
  
  def show
      @subscriber  = Subscriber.find(params[:id])
  end
  
  def create
      @subscriber = Subscriber.new(params[:subscriber])
      if @subscriber.save
        # Handle a successful save.
        SubscriberMailer.welcome_email(@subscriber).deliver
        redirect_to @subscriber
  else
        render 'new'
      end
  end
 
before_filter :signed_in_user, only: [:index]
  
  def index
    @subscribers=Subscriber.all
  end
  
end
