require 'rubygems'
require 'twilio-ruby'
require 'sinatra'

get '/sms-quickstart' do
  twiml = Twilio::TwiML::MessagingResponse.new do |r|
    r.message(body: "New phone, who dis?",
              media_url: "https://media.giphy.com/media/3o6ZtaZt380S8DlZjG/giphy.gif")
  end
  twiml.to_s
end
