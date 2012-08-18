class SmsController < ApplicationController
  
  def send_sms
    @client = Twilio::REST::Client.new TWILIO['account_sid'], TWILIO['auth_token']
    @number = params[:number]
    @download_url = params[:download_url]
    @client.account.sms.messages.create(
      :from => '+16464900357',
      :to => @number,
      :body => 'Download the app to stay connected with family & close friends: ' + @download_url,
    )
    render :confirm
  end
  
  def confirm
  end
end
