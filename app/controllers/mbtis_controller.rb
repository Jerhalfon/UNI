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
    puts result = JSON.pretty_generate(profile.result)
    new_result = JSON.parse(result)

    @openeness = (new_result["personality"][0]["percentile"] * 100).round(2)
    @conscientiousness = (new_result["personality"][1]["percentile"] * 100).round(2)
    @extraversion = (new_result["personality"][2]["percentile"] * 100).round(2)
    @agreeableness = (new_result["personality"][3]["percentile"] * 100).round(2)
    @emotional_range = (new_result["personality"][4]["percentile"] * 100).round(2)


    judger = new_result["personality"][0]["percentile"] > 0.5 ? false : true
    sensor = new_result["personality"][1]["percentile"] > 0.5 ? true : false
    thinker = new_result["personality"][3]["percentile"] > 0.5 ? false : true
    introvert = new_result["personality"][2]["percentile"] > 0.5 ? false : true

    bryan = [introvert, sensor, thinker, judger]
    @my_mbti = (Mbti.where(combination: bryan)).first


    @mbti_id = @my_mbti.id
    end
  end
end
