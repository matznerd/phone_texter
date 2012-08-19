class SmsController < ApplicationController
  
  def send_sms
    @client = Twilio::REST::Client.new TWILIO['account_sid'], TWILIO['auth_token']
    @number = params[:number]
    @app = App.find(params[:id])
    @client.account.sms.messages.create(
      :from => '+16464900357',
      :to => @number,
      :body => 'Download ' + @app.name + " " + download_app_url(@app),
    )
    render :confirm
  end
  
  def confirm
  end
end
