require 'rubygems'
require 'twilio-ruby'
require 'sinatra'

get '/sms-quickstart' do
  twiml = Twilio::TwiML::MessagingResponse.new do |r|
    r.message do |message|
        message.media("https://cdn.meme.am/cache/instances/folder944/500x/66491944.jpg")
    end
  end
  twiml.to_s
end

