class TwitterMentions
  LAST_READ_TWEET_ID_FILE = '/tmp/last_read_tweet_id'

  @mentions = []

  def last_read_tweet_id
    File.exist?(LAST_READ_TWEET_ID_FILE) ? File.open(LAST_READ_TWEET_ID_FILE).read.to_i : 0
  end

  def last_read_tweet_id=(value)
    File.open(LAST_READ_TWEET_ID_FILE, 'w') {|f| f.write(value.to_s) }
  end

  def next_unread
    last_read_id = self.last_read_tweet_id
    @mentions = TWITTER.mentions_timeline unless @mentions
    unread_tweet = @mentions.reject { |tweet| tweet.id <= last_read_id }.last
    self.last_read_tweet_id = unread_tweet.id if unread_tweet
    unread_tweet
  end
end
