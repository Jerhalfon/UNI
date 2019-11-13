require "ibm_watson/authenticators"
require "ibm_watson/personality_insights_v3"
include IBMWatson

class MbtisController < ApplicationController
  def description
    @mbti = Mbti.new
  end

  def intermediary
    description = params[:mbti][:name]
    File.open("app/views/mbtis/intermediary.html.erb", 'w') { |file| file.write(description) }
    redirect_to personnality_path
  end

  def personnality
    authenticator = Authenticators::IamAuthenticator.new(
      apikey: "v4n7dphTszfiDuchJEaOYEi8_e1kycLbvarM-K3J5GXL"
    )
    personality_insights = PersonalityInsightsV3.new(
      version: "2017-10-13",
      authenticator: authenticator
    )
    personality_insights.service_url = "https://gateway-fra.watsonplatform.net/personality-insights/api"

    File.open("app/views/mbtis/intermediary.html.erb") do |profile_text|
    profile = personality_insights.profile(
      accept: "application/json",
      content: profile_text.read,
      content_type: "text/html",
      raw_scores: true
    )
    result = JSON.pretty_generate(profile.result)
  raise
    end
  end
end
