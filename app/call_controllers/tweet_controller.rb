# encoding: utf-8

class TweetController < Adhearsion::CallController
  def run
    mentions = TwitterMentions.new
    while true
      mention = mentions.next_unread
      break unless mention
      play mention.text
      pause
    end
    play 'Goodbye'
    hangup
  end

  def pause
    sleep(1)
  end
end
