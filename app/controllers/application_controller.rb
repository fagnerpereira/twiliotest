class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def voice_body
    xml = Twilio::TwiML::Response.new do |r|
      r.Say "Hello"
    end.text

    render xml: xml
  end
end
