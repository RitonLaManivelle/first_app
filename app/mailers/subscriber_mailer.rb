class SubscriberMailer < ActionMailer::Base
  default :from => "sharee.exp@gmail.com"

    def welcome_email(subscriber)
      @subscriber = subscriber
      mail(:to => subscriber.email, :subject => "Welcome to My Awesome Site")
    end
  end
