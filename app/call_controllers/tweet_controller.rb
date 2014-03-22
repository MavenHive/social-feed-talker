# encoding: utf-8

class TweetController < Adhearsion::CallController
  def run
    mentions = TwitterMentions.new
    while true
      mention = mentions.next_unread
      play mention.text if mention
      pause
    end
    play 'Goodbye'
    hangup
  end

  def pause
    sleep(1)
  end
end
