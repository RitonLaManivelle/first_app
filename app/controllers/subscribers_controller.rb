class SubscribersController < ApplicationController
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
        redirect_to @subscriber
  else
        render 'new'
      end
  end
end
