require_relative '../assets/tweet_content_parser.rb'

namespace :twitter_cron_job do
  desc "This is a task to fetch latest tweets from twitter with a particular hashtag"
  task get_latest_tweets: :environment do
  	client = Twitter::REST::Client.new do |config|
	  config.consumer_key = ENV['CONSUMER_KEY']
      config.consumer_secret = ENV['CONSUMER_SECRET']
	end
  	@tweets= client.search("#naanperumal", {:count => 100, :result_type => "recent"})
  	tcParser = TweetContentParser.new
    tcParser.parse(@tweets)
  end
end
