TWITTER = Twitter::REST::Client.new do |config|
  config.consumer_key = ENV['TWITTER_CONSUMER_KEY']
  config.consumer_secret = ENV['TWITTER_CONSUMER_SECRET']
  config.access_token = ENV['TWITTER_ACCESS_TOKEN']
  config.access_token_secret = ENV['TWITTER_ACCESS_TOKEN_SECRET']

  puts "Initialized Twitter Client with - Consumer Key: #{config.consumer_key}, Consumer Secret: #{config.consumer_secret}, Access Token: #{config.access_token}, Access Token Secret: #{config.access_token_secret}"
end

TWITTER_STREAM = Twitter::Streaming::Client.new do |config|
  config.consumer_key = ENV['TWITTER_CONSUMER_KEY']
  config.consumer_secret = ENV['TWITTER_CONSUMER_SECRET']
  config.access_token = ENV['TWITTER_ACCESS_TOKEN']
  config.access_token_secret = ENV['TWITTER_ACCESS_TOKEN_SECRET']

  puts "Initialized Twitter Streaming Client with - Consumer Key: #{config.consumer_key}, Consumer Secret: #{config.consumer_secret}, Access Token: #{config.access_token}, Access Token Secret: #{config.access_token_secret}"
end
